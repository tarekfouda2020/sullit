# Adding a New Product Type

Checklist for adding a third (or Nth) product type to the app. Follow every step or the type will silently misbehave in some corner of the app.

## Motivating example

We'll add a hypothetical `bookings` type (rental products with a date range). Substitute your own name.

---

## Step 1 — Add the enum value

**File:** `lib/features/user/products/domain/behavior/product_type.dart`

```dart
enum ProductType {
  general,
  pharmacy,
  bookings,   // NEW
  ;

  static ProductType fromString(String? value) {
    switch (value) {
      case 'pharmacy':
        return ProductType.pharmacy;
      case 'bookings':          // NEW
        return ProductType.bookings;
      case 'general':
        return ProductType.general;
      default:
        return ProductType.general;
    }
  }

  String toApiString() {
    switch (this) {
      case ProductType.pharmacy:
        return 'pharmacy';
      case ProductType.bookings:   // NEW
        return 'bookings';
      case ProductType.general:
        return 'general';
    }
  }
}
```

---

## Step 2 — Add API-only fields to the freezed model (only if the API adds new keys for this type)

**File:** `lib/core/models/api_models/product_model/product_model.dart`

```dart
const factory ProductModel({
  required int id,
  required String name,
  // ...existing fields...
  PharmacyBranchModel? branch,
  @JsonKey(name: 'available_from') DateTime? availableFrom,       // NEW
  @JsonKey(name: 'available_to')   DateTime? availableTo,         // NEW
  @JsonKey(name: 'booking_duration_hours') int? bookingDurationHours,  // NEW
}) = _ProductModel;
```

Skip this step if the type reuses only existing fields.

---

## Step 3 — Create the domain subclass

**New file:** `lib/features/user/products/domain/models/bookings_product.dart`

```dart
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';

class BookingsProduct extends Product {
  DateTime? availableFrom;
  DateTime? availableTo;
  int? bookingDurationHours;

  BookingsProduct({
    // Only params needed at construction time. The freezed→domain
    // converter uses _fillCommon() to populate base fields; supply
    // only subclass-specific ones here.
    this.availableFrom,
    this.availableTo,
    this.bookingDurationHours,
    super.id,
    super.type,
    // ...list any base params you might want to pass at construction time,
    // matching what PharmacyProduct/NormalProduct expose...
  });

  BookingsProduct.fromJson(Map<String, dynamic> json)
      : super.fromJsonBase(json) {
    availableFrom       = DateTime.tryParse(json['available_from'] ?? '');
    availableTo         = DateTime.tryParse(json['available_to']   ?? '');
    bookingDurationHours = json['booking_duration_hours'];
  }
}
```

Notes:
- Extending `Product` (via `super.fromJsonBase`) inherits the manual JSON parsing used by the compare-DB round-trip.
- Add a `toJson()` override IF you want subclass fields persisted in the compare DB.

---

## Step 4 — Update the raw-JSON factory (for compare DB round-trip)

**File:** `lib/features/user/products/domain/models/product.dart`

```dart
factory Product.fromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'pharmacy': return PharmacyProduct.fromJson(json);
    case 'bookings': return BookingsProduct.fromJson(json);   // NEW
    default:         return NormalProduct.fromJson(json);
  }
}
```

Skip if bookings products are never added to compare.

---

## Step 5 — Update the freezed→domain factory

**File:** `lib/core/models/api_models/product_model/product_model.dart`

```dart
@override
Product toDomainModel() {
  switch (ProductType.fromString(type)) {
    case ProductType.pharmacy:
      return _fillCommon(PharmacyProduct(branch: branch?.toDomainModel()));
    case ProductType.bookings:                                          // NEW
      return _fillCommon(BookingsProduct(
        availableFrom: availableFrom,
        availableTo: availableTo,
        bookingDurationHours: bookingDurationHours,
      ));
    case ProductType.general:
      return _fillCommon(NormalProduct());
  }
}
```

`_fillCommon()` already populates all 40+ base fields — you only pass what's subclass-specific.

---

## Step 6 — Create the behavior

**New file:** `lib/features/user/products/domain/behavior/bookings_product_behavior.dart`

```dart
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/products/domain/behavior/product_behavior.dart';
import 'package:flutter_tdd/features/user/products/domain/models/bookings_product.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:injectable/injectable.dart';

@injectable
class BookingsProductBehavior implements ProductBehavior {
  @override
  CartTypeEnum get cartType => CartTypeEnum.bookings;   // add enum value first!

  @override
  bool get bumpsCartCountLocally => false;              // decide per business rule

  @override
  Future<bool?> addToCart(
    BuildContext context,
    Product product,
    int qty, {
    int? fallbackBranchId,
    VoidCallback? afterAddToCart,
  }) async {
    final booking = product is BookingsProduct ? product : null;
    // Call whichever CartHelper method fits this type; add one to CartHelper if
    // the wire-format differs from general/pharmacy carts.
    return getIt<CartHelper>().addBookingsProductToCart(
      context,
      qty,
      product.variant?.id,
      booking?.availableFrom,
      booking?.availableTo,
      showLoader: false,
      onAddCartFunc: () {
        FacebookEventsHelper.instance.productAddToCart(
          price: product.variant?.calculablePrice ?? '',
          id: product.id!,
        );
        afterAddToCart?.call();
      },
    );
  }
}
```

Notes on the interface:
- Only override what the interface declares. If you need a **type-specific** operation that doesn't make sense for other types (e.g. `showAvailabilityCalendar`), do NOT add it to `ProductBehavior`. Prefer a capability interface (`BookingsAwareBehavior`) that only this class implements, and check with `if (behavior is BookingsAwareBehavior)` at the (few) call sites that need it.

---

## Step 7 — Register in the registry

**File:** `lib/features/user/products/domain/behavior/product_behavior_registry.dart`

```dart
@lazySingleton
class ProductBehaviorRegistry {
  final Map<ProductType, ProductBehavior> _behaviors;

  ProductBehaviorRegistry(
    GeneralProductBehavior general,
    PharmacyProductBehavior pharmacy,
    BookingsProductBehavior bookings,      // NEW constructor param
  ) : _behaviors = {
    ProductType.general:  general,
    ProductType.pharmacy: pharmacy,
    ProductType.bookings: bookings,        // NEW entry
  };
  // forType() unchanged
}
```

Injectable auto-resolves the new `BookingsProductBehavior` because you annotated it `@injectable` in step 6.

---

## Step 8 — Add the cart-type enum value (only if this type needs its own cart)

**File:** `lib/features/user/cart/domain/entities/get_cart_items_params.dart`

```dart
enum CartTypeEnum {
  general,
  pharmacy,
  bookings;        // NEW

  String getKey() => switch (this) {
    general => 'general',
    pharmacy => 'pharmacy',
    bookings => 'bookings',   // NEW
  };
}
```

Then add the corresponding `addBookingsProductToCart` method to `CartHelper` — matches how `addPharmacyProductToCart` is structured. This is business-driven, not architecture-driven.

---

## Step 9 — Run codegen

```bash
dart run build_runner build --delete-conflicting-outputs
```

`di.config.dart` regenerates with:
- `getIt.registerFactory<BookingsProductBehavior>(() => BookingsProductBehavior())`
- Registry's new constructor param auto-wired from the container

`product_model.freezed.dart` and `product_model.g.dart` regenerate with the new fields.

---

## Step 10 — Do NOTHING else

Zero changes to:

- `BuildProductItem` — renders bookings cards automatically
- `BaseProductItem` — add-to-cart routes through `product.behavior.addToCart()`
- Related-products / top-selling widgets — pass `fallbackBranchId` to any behavior that wants a branch; bookings ignores it
- `ProductsHelper` — no fork
- All 17 heterogeneous `List<Product>` render sites — home, wishlist, search, compare, sales

---

## Sanity checklist before shipping

- [ ] `enum ProductType` has the new value + both `fromString` and `toApiString` cases
- [ ] New subclass extends `Product` and its `fromJson` reads all subclass-specific fields
- [ ] `Product.fromJson` factory dispatches to the new subclass (skip only if compare DB never sees this type)
- [ ] `ProductModel.toDomainModel` switch has the new case
- [ ] New behavior class is `@injectable` and implements every method on `ProductBehavior`
- [ ] `ProductBehaviorRegistry` constructor takes the new behavior + adds the map entry
- [ ] `dart run build_runner build --delete-conflicting-outputs` succeeded
- [ ] Grep sanity — `rg 'is BookingsProduct'` should hit only inside `BookingsProductBehavior` (and pharmacy-style dedicated widgets if you built any), never shared widgets/controllers
- [ ] Grep sanity — `rg '"bookings"'` should hit only `product_type.dart` and API contract docs
- [ ] Manual test: end-to-end add-to-cart works for a bookings product from at least one shared list surface (e.g. related products, wishlist)

---

## Common mistakes

1. **Forgot to run codegen.** Symptom: `getIt<BookingsProductBehavior>()` throws at startup. Fix: rerun `build_runner`.
2. **Type-specific method on shared interface.** Adding `showBranchDialog` to `ProductBehavior` and making general/bookings throw `UnsupportedError` — trades compile-time safety for runtime crash. Use a capability interface instead.
3. **Forgot `Product.fromJson` factory update.** Symptom: a booking added to the compare DB reads back as a `NormalProduct`, losing its `availableFrom`/`availableTo`. Fix: add the case in step 4.
4. **Hardcoding `product.isPharmProduct` again.** Don't. Route through `product.behavior.<op>` — that's the whole point of this abstraction.
