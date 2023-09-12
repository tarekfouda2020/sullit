part of 'category_details_imports.dart';

class CategoryDetails extends StatefulWidget {
  final Category categoryModel;

  const CategoryDetails({super.key, required this.categoryModel});

  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  late CategoryDetailsController controller;

  @override
  void initState() {
    controller = CategoryDetailsController(context, widget.categoryModel.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      key: controller.scaffold,
      appBar: DefaultAppBar(title: widget.categoryModel.name),
      drawer: BuildFilterDrawer(categoryDetailsController: controller),
      body: Column(
        children: [
          BuildAllCategoriesView(categoryDetailsController: controller),
          BuildFilterBar(categoryDetailsController: controller),
          BuildProducts(controller: controller),
        ],
      ),
    );
  }
}
