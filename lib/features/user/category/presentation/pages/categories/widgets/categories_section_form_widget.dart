part of 'categories_widgets_imports.dart';

class CategoriesSectionFormWidget extends StatelessWidget {
  final Category item;

  const CategoriesSectionFormWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(vertical: 12),
      color: context.colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: CategoriesHeaderTitleWidget(
              onTap: () => AutoRouter.of(context).push(
                CategoryDetailsRoute(categoryModel: item),
              ),
              title: item.name,
            ),
          ),
          Gaps.vGap12,
          SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 5,
              children: List.generate(
                item.subCats?.length ?? 0,
                (index) {
                  return Padding(
                    padding: const EdgeInsetsDirectional.only(end: 8),
                    child: InkWell(
                      onTap: () => AutoRouter.of(context).push(
                        CategoryDetailsRoute(categoryModel: item.subCats![index]),
                      ),
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            CachedImage(
                              url: item.subCats?[index].icon ?? '',
                              height: 69,
                              width: 69,
                              boxShape: BoxShape.circle,
                              haveRadius: false,
                            ),
                            Gaps.vGap8,
                            SizedBox(
                              width: 80,
                              child: Text(
                                item.subCats?[index].name ?? '',
                                maxLines: 2,
                                textAlign: TextAlign.center,
                                style: AppTextStyle.s12_w700(color: context.colors.black).copyWith(
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                            Gaps.vGap5,
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
