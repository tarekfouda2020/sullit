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
    PrescriptionOrderStepModel(icon: Res.shopCart, title: "Attachments"),
    PrescriptionOrderStepModel(icon: Res.payHand, title: "Receiving Method"),
    PrescriptionOrderStepModel(icon: Res.successIcon, title: "Success"),
  ];

  // Normal-order flow: Cart -> Address -> Checkout -> Success.
  static const List<PrescriptionOrderStepModel> normalFlowSteps = [
    PrescriptionOrderStepModel(icon: Res.shopCart, title: "Cart"),
    PrescriptionOrderStepModel(icon: Res.payHand, title: "Receiving Method"),
    PrescriptionOrderStepModel(icon: Res.visaCards, title: "Payment Checkout"),
    PrescriptionOrderStepModel(icon: Res.successIcon, title: "Success"),
  ];
}
