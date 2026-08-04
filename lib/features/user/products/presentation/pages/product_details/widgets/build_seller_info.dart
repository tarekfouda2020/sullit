part of 'product_details_widgets_imports.dart';

class BuildSellerInfo extends StatelessWidget {
  /// shopModel return in product details
  final Shop? shopModel;
  final ProductDetailsController controller;

  const BuildSellerInfo(
      {super.key, required this.shopModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        if (shopModel != null) {
          controller.routeToSellerPage(context, shopModel!);
        }
      },
      child: Container(
        decoration: CustomDecoration(radius: BorderRadius.circular(12)),
        padding: Dimens.paddingS22T10B10,
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${tr("soldBy")} :",
                    style: AppTextStyle.s12_w400(
                      color: context.colors.textColor,
                    ),
                  ),
                  Gaps.vGap5,
                  Text(
                    shopModel?.name ?? tr('inHouseProduct'),
                    style: AppTextStyle.s14_w600(
                      color: context.colors.black,
                    ),
                  ),
                ],
              ),
            ),

            /// not shown in figma
            // Visibility(
            //   visible: shopModel != null,
            //   child: Flexible(
            //     child: DefaultButton(
            //       margin: Dimens.paddingHorizontal10PX,
            //       title:
            //       shopModel?.follow == true ? tr("unfollow") : tr("follow"),
            //       onTap: () => controller.onChangeFollowing(context, shopModel!.userId!),
            //       color: shopModel?.follow == true
            //           ? context.colors.black
            //           : context.colors.primary,
            //       height: 25.h,
            //       borderRadius: Dimens.borderRadius5PX,
            //       //width: 100,
            //     ),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
