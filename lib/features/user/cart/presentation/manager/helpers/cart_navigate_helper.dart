
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/cart_check_out_saved_data.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/seller_shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:injectable/injectable.dart';


@lazySingleton
class CartNavigateHelper {
  AddressDomainModel? selectedOrderAddress;
  List<SellerShipping>? deliveryDetailsData;
  // Shipping? orderSummaryCheckOut;
  late CartCheckOutSavedData cartCheckOutPageData;

  int selectedForwardStep = 1 ;


  void initData(){
    if(selectedForwardStep != 1){
      selectedForwardStep = 1;
    }
    selectedOrderAddress = null;
    deliveryDetailsData = null;
    // orderSummaryCheckOut = null;
    cartCheckOutPageData = CartCheckOutSavedData();
  }

  void goForward(BuildContext context){
    switch(selectedForwardStep){
      case 2 : _routeToAddressList(context);
      case 3 : _routeToDeliveryStep(context);
      case 4 : _routeToCartCheckOut(context);
    }
  }


  void _routeToAddressList(BuildContext context){
    if(selectedOrderAddress != null){
      AutoRouter.of(context).push(const ShippingRoute());
    }
  }

  void _routeToDeliveryStep(BuildContext context){
    if(deliveryDetailsData != null){
      AutoRouter.of(context).push(const DeliveryRoute());
    }
  }

  void _routeToCartCheckOut(BuildContext context){
    if(cartCheckOutPageData.orderSummaryCheckOut != null){
      AutoRouter.of(context).push( CartPaymentRoute(shipping: cartCheckOutPageData.orderSummaryCheckOut!));
    }
  }



  void updateDriverInstructions({String driverNotes = "",List<DeliveryInstructionModel>? instruction}){
    cartCheckOutPageData.selectedDriverInstructions = instruction;
    cartCheckOutPageData.driverNotes = driverNotes;
  }

  void updateReplacementStatus( bool allowReplace){
    cartCheckOutPageData.allowReplacement = allowReplace;
  }

  void updateTermsAccept( bool acceptTerms){
    cartCheckOutPageData.termsAccept = acceptTerms;
  }


  void updateShippingData( Shipping? newData){
    cartCheckOutPageData.orderSummaryCheckOut = newData;
  }


  void saveVoucherCode(String code){
    cartCheckOutPageData.voucherCode = code;
  }

  void saveGiftCardCode(String code){
    cartCheckOutPageData.giftCardCode = code;
  }





}























