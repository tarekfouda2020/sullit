import 'package:dartz/dartz.dart';
import 'package:flutter_tdd/core/errors/failures.dart';
import 'package:flutter_tdd/core/usecases/use_case.dart';
import 'package:flutter_tdd/features/user/cart/data/models/cart_model/cart_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/coupon_response_model/coupon_response_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/delivery_instruction/delivery_instruction.dart';
import 'package:flutter_tdd/features/user/cart/data/models/fess_mechanism_model/fess_mechanism_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/gift_card_model/gift_card_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/order_summary_model/order_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/seller_shipping_model/seller_shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_model/shipping_model.dart';
import 'package:flutter_tdd/features/user/cart/data/models/shipping_summary_model/shipping_summary_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/add_cart_address_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/apply_gift_card_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/clear_cart_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/create_order_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/delete_cart_item_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/get_cart_items_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/store_cart_shipping_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/update_cart_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/add_product_to_cart_params.dart';

abstract class CartDataSources {
 Future<Either<Failure, CartModel>> getCartItems (CartParams params);
 Future<Either<Failure, bool>> addCartAddress (AddCartAddressParams param);
 Future<Either<Failure, ShippingModel>> cartStoreShipping (StoreCartShippingParams params);
 Future<Either<Failure, CouponResponseModel>> applyCoupon (String param);
 Future<Either<Failure, OrderSummaryModel>> createOrder (CreateOrderParams params);
 Future<Either<Failure, OrderSummaryModel>> getCombinedOrder (int param);
 Future<Either<Failure, String>> addToCart (AddProductToCartParams params);
 Future<Either<Failure, bool>> deleteCartItem (DeleteCartItemParams params);
 Future<Either<Failure, CartModel>> updateCartItem (UpdateCartItemParams params);
 Future<Either<Failure, List<SellerShippingModel>>> getShippingInfo (bool param);
 Future<Either<Failure, ShippingSummaryModel>> applyLoyaltyPoints (NoParams params);
 Future<Either<Failure, ShippingSummaryModel>> removeLoyaltyPoints (NoParams params);
 Future<Either<Failure, GiftCardAppliedCartModel>> applyGiftCard (ApplyGiftCardParams params);
 Future<Either<Failure, String>> clearCart (ClearCartParams params);
 Future<Either<Failure, ShippingSummaryModel>> removeCoupon (NoParams params);

 Future<Either<Failure, FessMechanismModel>> getFees (bool params);

 Future<Either<Failure, List<DeliveryInstruction>>> getInstructions(bool params);

 Future<Either<Failure, String>> shareCart (NoParams params);
 Future<Either<Failure, bool>> importCart (String token);

}