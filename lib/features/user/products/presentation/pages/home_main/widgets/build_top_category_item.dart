part of 'home_main_widgets_imports.dart';

class BuildTopCategoriesItem extends StatelessWidget {
  final Category categoryModel;

  const BuildTopCategoriesItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context)
          .push(CategoryDetailsRoute(categoryModel: categoryModel)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CachedImage(
            height: 45,
            width: 45,
            fit: BoxFit.cover,
            haveRadius: false,
            url: categoryModel.icon,
          ),
          Gaps.vGap3,
          Text(
            categoryModel.name,
            textAlign: TextAlign.center,
            style: AppTextStyle.s10_w500(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
