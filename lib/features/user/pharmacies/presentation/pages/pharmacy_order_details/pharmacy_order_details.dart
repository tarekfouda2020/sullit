part of 'pharmacy_order_details_imports.dart';

class PharmacyOrderDetails extends StatefulWidget {
  final int id;

  const PharmacyOrderDetails({super.key, required this.id});

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
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Order Details"),
      body: PharmacyOrderDetailsBody(controller: controller),
    );
  }
}
