part of 'receiving_method_imports.dart';

class ReceivingMethodController{

  final GenericBloc<int> changeTabCubit = GenericBloc(0);

  final ShippingController shippingController = ShippingController();
  final DeliveryController deliveryController = DeliveryController();


  Future<void> onPressProceed(BuildContext context)async{
    if(changeTabCubit.state.data == 0){
      // await shippingController.cartAddAddress(context);
      changeTabCubit.onUpdateData(1);
    }else{
      deliveryController.setCartStoreShipping(context);
    }
  }


}