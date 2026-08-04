import 'package:flutter/cupertino.dart';
import 'package:flutter_tdd/core/helpers/custom_toast.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/cart_check_out_saved_data.dart';
import 'package:flutter_tdd/features/user/cart/domain/entities/store_cart_shipping_params.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/order_summary.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/seller_shipping.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/cart_helper.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CartNavigateHelper {
  static const int cartStepIndex = 0;
  static const int shippingStepIndex = 1;
  static const int deliveryStepIndex = 2;
  static const int paymentStepIndex = 3;
  static const int confirmationStepIndex = 4;

  AddressDomainModel? selectedOrderAddress;
  List<SellerShipping>? deliveryDetailsData;
  StoreCartShippingParams? checkOutParams;
  // Shipping? orderSummaryCheckOut;
  late CartCheckOutSavedData cartCheckOutPageData;

  final ValueNotifier<int> stepNotifier = ValueNotifier<int>(cartStepIndex);

  OrderSummaryDomainModel? confirmationSummary;
  int? confirmationCombinedId;

  void initData() {
    stepNotifier.value = cartStepIndex;
    selectedOrderAddress = null;
    deliveryDetailsData = null;
    // orderSummaryCheckOut = null;
    cartCheckOutPageData = CartCheckOutSavedData();
    confirmationSummary = null;
    confirmationCombinedId = null;
  }

  int get currentStep => stepNotifier.value;

  bool setStep(int step, {bool force = false}) {
    if (step < cartStepIndex || step > confirmationStepIndex) return false;
    if (force || _canGoToStep(step)) {
      stepNotifier.value = step;
      return true;
    }
    return false;
  }

  bool _canGoToStep(int step) {
    switch (step) {
      case shippingStepIndex:
        return true;
      case deliveryStepIndex:
        return selectedOrderAddress != null;
      case paymentStepIndex:
        return cartCheckOutPageData.orderSummaryCheckOut != null;
      case confirmationStepIndex:
        return confirmationSummary != null || confirmationCombinedId != null;
      default:
        return true;
    }
  }

  bool navigateToStep(int step) {
    var cartData = getIt<CartHelper>().cartItemsBloc.state.data;
    var shippingStep = CartNavigateHelper.shippingStepIndex;
    if (cartData.minimumStatus == false && step == shippingStep) {
      CustomToast.showSimpleToast(msg: cartData.minimumAmountMsg ?? "");
      return false;
    }
    if (step < cartStepIndex || step > confirmationStepIndex) return false;
    if (step <= currentStep) {
      return setStep(step, force: true);
    }
    return setStep(step);
  }

  void backOneStep() {
    if (currentStep > cartStepIndex) {
      stepNotifier.value = currentStep - 1;
    }
  }

  void goToConfirmationStep({OrderSummaryDomainModel? summary, int? combinedId}) {
    confirmationSummary = summary;
    confirmationCombinedId = combinedId ?? summary?.summary?.combinedOrderId;
    navigateToStep(confirmationStepIndex);
  }

  void updateDriverInstructions(
      {String driverNotes = "", List<DeliveryInstructionModel>? instruction}) {
    cartCheckOutPageData.selectedDriverInstructions = instruction;
    cartCheckOutPageData.driverNotes = driverNotes;
  }

  void updatePickerNotes({String driverNotes = ""}) {
    cartCheckOutPageData.pickerNotes = driverNotes;
  }

  void updateReplacementStatus(bool allowReplace) {
    cartCheckOutPageData.allowReplacement = allowReplace;
  }

  void updateTermsAccept(bool acceptTerms) {
    cartCheckOutPageData.termsAccept = acceptTerms;
  }

  void updateShippingData(Shipping? newData) {
    cartCheckOutPageData.orderSummaryCheckOut = newData;
  }

  void saveVoucherCode(String code) {
    cartCheckOutPageData.voucherCode = code;
  }

  void saveGiftCardCode(String code) {
    cartCheckOutPageData.giftCardCode = code;
  }
}
