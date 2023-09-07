part of 'customers_products_imports.dart';
class CustomersProducts extends StatefulWidget {
  const CustomersProducts({Key? key}) : super(key: key);

  @override
  State<CustomersProducts> createState() => _CustomersProductsState();
}

class _CustomersProductsState extends State<CustomersProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  const DefaultAppBar(title: 'Customers Products',),
      body: Column(
        children: const [

        ],
      ),
    );
  }
}
