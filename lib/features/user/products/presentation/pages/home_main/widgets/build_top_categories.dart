part of 'home_main_widgets_imports.dart';

class BuildTopCategories extends StatelessWidget {
  final List<Category> categories;
  final HomeMainController controller;
  const BuildTopCategories({super.key, required this.categories, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: categories.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap15,
           CategoriesHeaderWidget(controller: controller),
          Gaps.vGap16,
          SizedBox(
            height: 120,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: controller.firstCategoriesSection().length,
              itemBuilder: (context, index) {
              return BuildTopCategoriesItem(
                categoryModel: controller.firstCategoriesSection()[index],
              );
            },),
          ),
          if(controller.secondCategoriesSection().isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: SizedBox(
              height: 120,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.secondCategoriesSection().length,
                itemBuilder: (context, index) {
                  return BuildTopCategoriesItem(
                    categoryModel: controller.secondCategoriesSection()[index],
                  );
                },),
            ),
          ),
          // GridView.builder(
          //   shrinkWrap: true,
          //   physics: const NeverScrollableScrollPhysics(),
          //   itemCount: categories.length > 10
          //       ?categories.take(10).length
          //       :categories.length,
          //   itemBuilder: (_, index) => BuildTopCategoriesItem(
          //     categoryModel: categories[index],
          //   ),
          //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          //     crossAxisCount: 5,
          //     childAspectRatio: 0.59,
          //     crossAxisSpacing: 8,
          //     mainAxisSpacing: 15,
          //   ),
          // )

        ],
      ),
    );
  }
}
