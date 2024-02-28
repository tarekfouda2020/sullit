part of 'product_details_widgets_imports.dart';

class BuildSellerInfo extends StatelessWidget {
  final Shop? shopModel;
  final ProductDetailsController controller;

  const BuildSellerInfo(
      {super.key, required this.shopModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap10,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sold By :",
                    style: AppTextStyle.s15_w700(
                      color: context.colors.black,
                    ),
                  ),
                  Gaps.vGap5,
                  Text(
                    shopModel?.name ?? tr('inHouseProduct'),
                    style: AppTextStyle.s14_w400(
                      color: context.colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: DefaultButton(
                margin: Dimens.paddingHorizontal10PX,
                title: shopModel!.follow == true ? "UnFollow" : "Follow",
                onTap: () => controller.onChangeFollowing(context,shopModel!.userId!),
                color: shopModel!.follow == true
                    ? context.colors.black
                    : context.colors.primary,
                height: 35.h,
                borderRadius: Dimens.borderRadius5PX,
              ),
            )
          ],
        ),
        Gaps.line(context.colors.greyWhite, 20.h),
      ],
    );
  }
}
