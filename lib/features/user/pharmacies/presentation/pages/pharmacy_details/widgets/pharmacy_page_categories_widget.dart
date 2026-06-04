part of 'widgets_imports.dart';

class PharmacyPageCategoriesWidget extends StatelessWidget {
  final PharmacyDetailsController controller;

  const PharmacyPageCategoriesWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: PagedListView<int,ShopCategory>(
        scrollDirection: Axis.horizontal,
        pagingController: controller.categoriesPagingController,
        builderDelegate: PagedChildBuilderDelegate(
          itemBuilder: (context, item, index) {
            return GestureDetector(
              onTap: () => controller.onSelectCategory(item),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                alignment: Alignment.center,
                margin: EdgeInsetsDirectional.only(
                  start: index == 0 ? 20 : 8,
                  end: index == controller.categoriesPagingController.itemList!.length - 1 ? 20 : 0,
                ),
                decoration: BoxDecoration(
                  color: item.isSelect
                      ? context.colors.primary
                      : context.colors.gray3,
                  borderRadius: Dimens.borderRadius40PX,
                ),
                child: Text(
                  item.name,
                  maxLines: 2,
                  style: AppTextStyle.s14_w500(
                    color: item.isSelect
                        ? context.colors.white
                        : context.colors.gray8,
                  ).copyWith(
                      height: 1.3
                  ),
                ),
              ),
            );
          },
          firstPageProgressIndicatorBuilder: (context) => Center(child: SizedBox(
            width: 20,height: 20,
            child: CircularProgressIndicator.adaptive(
              backgroundColor: context.colors.white,
            ),
          )),
          newPageProgressIndicatorBuilder: (context) => Center(child: SizedBox(
            width: 20,height: 20,
            child: CircularProgressIndicator.adaptive(
              backgroundColor: context.colors.white,
            ),
          ),),
        ),

      ),
    );
  }
}
