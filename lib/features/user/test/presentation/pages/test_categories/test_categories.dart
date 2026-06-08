part of 'test_categories_imports.dart';

class TestCategories extends StatefulWidget {
  const TestCategories({super.key});

  @override
  State<TestCategories> createState() => _TestCategoriesState();
}

class _TestCategoriesState extends State<TestCategories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildHomeAppBar(),
    );
  }
}
