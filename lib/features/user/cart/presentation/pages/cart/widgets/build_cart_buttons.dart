part of 'cart_widgets_imports.dart';

class BuildCartButtons extends StatelessWidget {
  final CartDomainModel cartModel;
  final CartController controller;

  const BuildCartButtons({super.key, required this.cartModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: cartModel.items!.isNotEmpty,
      child: Container(
        color: context.colors.cartBg,
        padding:  EdgeInsetsDirectional.only(
          start: 15,
          top: 20,
          end: 40,
          bottom: Platform.isIOS
              ?40
              :30,
        ),
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
                Text(tr("total"), style: AppTextStyle.s12_w400(color: context.colors.textColor)),
                Gaps.vGap6,
                DirhamPrice(
                  amount: cartModel.calculableTotal?.toStringAsFixed(2) ?? "0.00",
                  currencyStyle: AppTextStyle.s18_w400(color: context.colors.primary),
                  textStyle: AppTextStyle.s14_w600(color: context.colors.primary),
                  currencyOffset: 0,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
