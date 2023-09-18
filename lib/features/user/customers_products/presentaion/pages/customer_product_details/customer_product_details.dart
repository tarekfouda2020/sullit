part of 'customer_product_details_imports.dart';

class CustomerProductDetails extends StatefulWidget {
  final int id;

  const CustomerProductDetails({super.key, required this.id});

  @override
  _CustomerProductDetailsState createState() => _CustomerProductDetailsState();
}

class _CustomerProductDetailsState extends State<CustomerProductDetails> {
  late CustomerProductDetailsController controller;

  @override
  void initState() {
    controller = CustomerProductDetailsController(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Details"),
      backgroundColor: context.colors.customBackground,
    );
  }
}
