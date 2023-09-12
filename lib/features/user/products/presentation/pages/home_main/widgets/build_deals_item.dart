part of 'home_main_widgets_imports.dart';

class BuildDealsItem extends StatelessWidget {
  final FlashSale flashSaleModel;
  final HomeMainController controller;

  const BuildDealsItem({super.key, required this.flashSaleModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ()=>controller.navigateToDeals(context, flashSaleModel),
      child: Container(
        margin: Dimens.paddingAll3PX,
        padding: Dimens.paddingVertical8PX,
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius20PX,
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              blurRadius: 1,
              spreadRadius: .5,
            )
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.monetization_on_outlined,
              color: context.colors.primary,
              size: 17.sp,
            ),
            Gaps.hGap5,
            Text(
              flashSaleModel.title,
              style: AppTextStyle.s13_w500(
                color: context.colors.primary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
