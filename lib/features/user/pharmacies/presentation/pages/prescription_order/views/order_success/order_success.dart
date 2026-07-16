part of 'order_success_imports.dart';

class OrderSuccess extends StatefulWidget {
  final OrderSummaryDomainModel summary;
  final bool havePrescription;

  const OrderSuccess({
    super.key,
    required this.summary,
    this.havePrescription = false,
  });

  @override
  State<OrderSuccess> createState() => _OrderSuccessState();
}

class _OrderSuccessState extends State<OrderSuccess> {
  late final OrderSuccessController controller;

  @override
  void initState() {
    super.initState();
    controller = OrderSuccessController(widget.summary);
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
            title: "Order Details",
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
