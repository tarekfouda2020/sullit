part of 'order_success_imports.dart';

class OrderSuccess extends StatefulWidget {
  final OrderSummaryDomainModel summary;
  final bool havePrescription;
  final Shop? pharmacy;
  const OrderSuccess({
    super.key,
    required this.summary,
    this.havePrescription = false,
    this.pharmacy,
  });

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  late final OrderSuccessController controller;

  @override
  void initState() {
    super.initState();
    controller = OrderSuccessController(widget.summary,widget.pharmacy?.toShopCardDomainModel());
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.onPressBack(context);
        return true;
      },
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar:  DefaultAppBar(
            title: widget.havePrescription
                ? "Prescription Order"
                :"Order Details",
          onBack: () => controller.onPressBack(context),
        ),
        body: Column(
          children: [
            BuildPrescriptionOrderStepper(
              current: widget.havePrescription ? 3 : 4,
              steps: widget.havePrescription
                  ? PrescriptionOrderStepModel.prescriptionFlowSteps
                  : PrescriptionOrderStepModel.normalFlowSteps,
            ),
            if (widget.havePrescription)
              PharmacyInfoRowWidget(pharmacy: controller.pharmacy),
            Expanded(child: OrderSuccessBody(controller: controller)),
          ],
        ),
      ),
    );
  }
}
