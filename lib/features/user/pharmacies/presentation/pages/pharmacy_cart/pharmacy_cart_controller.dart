part of 'pharmacy_cart_imports.dart';

class PharmacyCartController {
  final GenericBloc<List<CartItem>> cartItemsBloc = GenericBloc([]);

  final GenericBloc<bool> haveInsurance  = GenericBloc<bool>(false);

  PharmacyCartController() {
    _getFakeData();
  }

  void _getFakeData() {
    List<CartItem> fakeData = List.generate(10, (index) {
      return  CartItem(
        id: index+1,
        ownerId: 1,
        thumbnailImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT6-O_U-a-m8F_rXY-xX-K8YQ-C-u-q-L-Q&s",
        name: "Panadol Acute Head Cold Paracetamol Tablets",
        price: "15.00",
        tax: "0.00",
        quantity: 2,
        isDigital: false,
        total: "30.00",
        calculableTotal: 30.0,
        currencySymbol: "AED",
        productId: 101,
        minQty: 1,
        stockQty: 100,
        isWishlist: false,
        soldBy: "Al Manara Pharmacy",
        soldByType: "Pharmacy",
        shopId: 1,
        rating: 4.5,
        loyaltyPoints: 10,
        hasSpecialLoyaltyPoints: false,
      );
    },);
    cartItemsBloc.onUpdateData(fakeData);
  }

  void whileOnDecreaseCount(BuildContext context, CartItem cartItem, String quantity, GenericBloc<int> qtyCubit) {
    if (cartItem.quantity > 1) {
      cartItem.quantity--;
      qtyCubit.onUpdateData(cartItem.quantity);
      cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
    }
  }

  void whileOnIncreaseCount(BuildContext context, CartItem cartItem, String quantity, GenericBloc<int> qtyCubit) {
    cartItem.quantity++;
    qtyCubit.onUpdateData(cartItem.quantity);
    cartItemsBloc.onUpdateData(cartItemsBloc.state.data);
  }

  void deleteItemFromCart(BuildContext context, CartItem cartItem) {
    List<CartItem> currentItems = List.from(cartItemsBloc.state.data);
    currentItems.removeWhere((item) => item.id == cartItem.id);
    cartItemsBloc.onUpdateData(currentItems);
  }
}