part of 'cart_widgets_imports.dart';

class BuildCartButtons extends StatelessWidget {
  final CartDomainModel cartModel;
  final CartController controller;

  const BuildCartButtons(
      {super.key, required this.cartModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: cartModel.items!.isNotEmpty,
      child: Container(
       color: context.colors.cartBg,
        padding:const EdgeInsetsDirectional.only(start: 15,top: 20,end: 40,bottom: 15),
        child: Row(
          children: [
            Expanded(
              child: DefaultButton(
                margin: EdgeInsets.zero,
                title: tr("continue"),
                onTap: () => controller.navigateToShipping(context),
              ),
            ),
            Gaps.hGap11,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tr("total"),
                    style: AppTextStyle.s12_w400(color: context.colors.textColor)
                ),
                Gaps.vGap6,
                Text(tr("${cartModel.calculableTotal}${cartModel.currencySymbol}"),
                // Text(tr("${cartModel.calculableTotal}${cartModel.currencySymbol}"),
                  // Text(tr("${cartModel.getProductsTotalWithoutTax()}${cartModel.currencySymbol}"),
                    style: AppTextStyle.s14_w600(color: context.colors.primary)
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
