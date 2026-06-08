import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/delivery_instruction_model.dart';
import 'package:flutter_tdd/features/user/cart/domain/models/shipping.dart';
import 'package:flutter_tdd/features/user/cart/presentation/manager/helpers/cart_navigate_helper.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CartCheckOutSavedData {
  Shipping? orderSummaryCheckOut;
  bool? termsAccept;
  bool? allowReplacement;
  List<DeliveryInstructionModel>? selectedDriverInstructions;
  String? driverNotes;
  String? pickerNotes;
  String? voucherCode;
  String? giftCardCode;

  // CartCheckOutSavedData(){
  //   orderSummaryCheckOut = getIt<CartNavigateHelper>().orderSummaryCheckOut;
  // }
}
