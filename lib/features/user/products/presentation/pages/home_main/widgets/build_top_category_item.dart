part of 'home_main_widgets_imports.dart';

class BuildTopCategoriesItem extends StatelessWidget {
  final Category categoryModel;

  const BuildTopCategoriesItem({super.key, required this.categoryModel});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(end: 15),
      child: GestureDetector(
        onTap: () => AutoRouter.of(context).push(CategoryDetailsRoute(categoryModel: categoryModel,fromHome: true)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
               height: 90,
              decoration: BoxDecoration(
                color: context.colors.lightPink,
                shape:  BoxShape.circle
              ),
              child: CachedImage(
                height: 70,
                width: 70,
                bgColor: context.colors.lightPink ,
                fit: BoxFit.cover,
                haveRadius: false,
                url: categoryModel.icon,
                boxShape: BoxShape.circle,
              ),
            ),
            Gaps.vGap7,
            Flexible(
              child: SizedBox(
                width: 72,
                child: Text(
                  categoryModel.name,
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s12_w700(
                    color: context.colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
