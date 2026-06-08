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
      body: Column(
        spacing: 30,
        children: [
          Expanded(
            child: PharmacyOrderDetailsBody(controller: controller),
          ),
          CustomBottomSafeAreaWidget(
            child: Column(
              spacing: 12,
              children: [
                DefaultButton(
                  title: "Cancel Order",
                  onTap: () {},
                  textColor: context.colors.gray8,
                  color: context.colors.white,
                  borderColor: context.colors.borderColor,
                ),
                DefaultButton(
                  title: "Confirm&Pay Now",
                  onTap: () {},
                  textColor: context.colors.white,
                  color: context.colors.green,
                  borderColor: context.colors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
