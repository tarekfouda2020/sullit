part of 'pharmacy_order_details_imports.dart';

class PharmacyOrderDetails extends StatefulWidget {
  final int id;
  final bool fromCheckout;
  const PharmacyOrderDetails({super.key, required this.id,  this.fromCheckout = false});

  @override
  State<PharmacyOrderDetails> createState() => _PharmacyOrderDetailsState();
}

class _PharmacyOrderDetailsState extends State<PharmacyOrderDetails> {
  late final PharmacyOrderDetailsController controller;

  @override
  void initState() {
    super.initState();
    controller = PharmacyOrderDetailsController(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.fromCheckout) {
          controller.onPressBack(context, true);
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar:  DefaultAppBar(
            title: "",
          onBack: () => controller.onPressBack(context, widget.fromCheckout),
        ),
        body: PharmacyOrderDetailsBody(controller: controller),
      ),
    );
  }
}
