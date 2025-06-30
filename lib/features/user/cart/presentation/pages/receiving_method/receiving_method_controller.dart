part of 'receiving_method_imports.dart';

class ReceivingMethodController{

  final GenericBloc<int> changeTabCubit = GenericBloc(0);

  final ShippingController shippingController = ShippingController();
  final DeliveryController deliveryController = DeliveryController();


  void onPressProceed(BuildContext context){
    if(changeTabCubit.state.data == 0){
      changeTabCubit.onUpdateData(1);
    }else{
      deliveryController.setCartStoreShipping(context);
    }
  }


}