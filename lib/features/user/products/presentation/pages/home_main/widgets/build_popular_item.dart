part of 'home_main_widgets_imports.dart';

class BuildPopularItem extends StatelessWidget {
  final PopularProductsDomainModel popularProductModel;

  const BuildPopularItem({super.key, required this.popularProductModel});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(PopularProductCardsRoute(
          popularProductCardsModel: popularProductModel)),
      child: Container(
        margin: const EdgeInsetsDirectional.only(end: Dimens.dp10),
        padding: Dimens.paddingAll10PX,
        width: 180.w,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius5PX,
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: 1,
              spreadRadius: .5,
            )
          ],
        ),
        child: Row(
          children: [
            CachedImage(
              height: 50.r,
              width: 50.r,
              fit: BoxFit.fill,
              haveRadius: false,
              url: popularProductModel.banner ?? "",
            ),
            Gaps.hGap10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    popularProductModel.name,
                    style: AppTextStyle.s13_w500(color: context.colors.black),
                  ),
                  Gaps.vGap5,
                  Text(
                    '${popularProductModel.productsCount} Products',
                    style: AppTextStyle.s12_w500(color: context.colors.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
