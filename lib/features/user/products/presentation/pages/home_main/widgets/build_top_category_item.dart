part of 'home_main_widgets_imports.dart';

class BuildTopCategoriesItem extends StatelessWidget {
  final Category categoryModel;

  const BuildTopCategoriesItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(
        CategoryDetailsRoute(
          categoryModel: categoryModel,
          fromHome: true,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 69,
            height: 69,
            padding: const EdgeInsets.all(7),
            decoration: BoxDecoration(
              color: context.colors.lightPink,
              shape: BoxShape.circle,
            ),
            child: CachedImage(
              height: 45,
              width: 45,
              bgColor: context.colors.lightPink,
              fit: BoxFit.cover,
              haveRadius: false,
              url: categoryModel.icon,
              boxShape: BoxShape.circle,
            ),
          ),
          Gaps.vGap7,
          Text(
            categoryModel.name,
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.s12_w700(
              color: context.colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
