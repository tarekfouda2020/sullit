import 'package:flutter_tdd/res.dart';

class PrescriptionOrderStepModel {
  final String icon;
  final String title;

  const PrescriptionOrderStepModel({
    required this.icon,
    required this.title,
  });

  // Prescription-order flow: Attach Prescription -> Address -> Success.
  static const List<PrescriptionOrderStepModel> prescriptionFlowSteps = [
    PrescriptionOrderStepModel(icon: Res.medicRecipeIcon, title: "Attach Prescription"),
    PrescriptionOrderStepModel(icon: Res.addAddresses, title: "Address"),
    PrescriptionOrderStepModel(icon: Res.successIcon, title: "Success"),
  ];

  // Normal-order flow: Cart -> Address -> Checkout -> Success.
  static const List<PrescriptionOrderStepModel> normalFlowSteps = [
    PrescriptionOrderStepModel(icon: Res.shopCart, title: "Cart"),
    PrescriptionOrderStepModel(icon: Res.addAddresses, title: "Address"),
    PrescriptionOrderStepModel(icon: Res.payCheckout, title: "Checkout"),
    PrescriptionOrderStepModel(icon: Res.successIcon, title: "Success"),
  ];
}
