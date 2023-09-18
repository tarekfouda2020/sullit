part of 'customers_products_imports.dart';

class CustomersProducts extends StatefulWidget {
  const CustomersProducts({Key? key}) : super(key: key);

  @override
  State<CustomersProducts> createState() => _CustomersProductsState();
}

class _CustomersProductsState extends State<CustomersProducts> {
  late CustomerProductsController controller;

  @override
  void initState() {
    controller = CustomerProductsController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: 'Customers Products'),
      backgroundColor: context.colors.customBackground,
      body: Column(
        children: [
          BuildMainCategories(controller: controller),
          BuildCategoriesView(controller: controller),
          BuildSortBar(controller: controller),
          BuildCustomerProducts(controller: controller),
        ],
      ),
    );
  }
}
