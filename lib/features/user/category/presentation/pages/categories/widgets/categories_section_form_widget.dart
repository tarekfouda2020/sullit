part of 'categories_widgets_imports.dart';

class CategoriesSectionFormWidget extends StatelessWidget {
  final Category item;

  const CategoriesSectionFormWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      color: context.colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesHeaderTitleWidget(
            onTap: () => AutoRouter.of(context).push(
              CategoryDetailsRoute(categoryModel: item),
            ),
            title: item.name,
          ),
          Gaps.vGap12,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
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
                              width: 60,
                              child: Text(
                                item.subCats?[index].name ?? '',
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
