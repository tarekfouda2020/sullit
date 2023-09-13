part of 'product_details_widgets_imports.dart';

class BuildCartSuccessDialog extends StatelessWidget {
  const BuildCartSuccessDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.customBackground,
      contentPadding: Dimens.paddingAll15PX,
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.check_circle_rounded,
              size: 70.sp,
              color: context.colors.green,
            ),
            Padding(
              padding: Dimens.paddingVertical20PX,
              child: Text(
                "Item Added To Your Cart",
                style: AppTextStyle.s16_w500(color: context.colors.green),
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: DefaultButton(
                    title: "Back To Shopping",
                    onTap: () => AutoRouter.of(context).pop(),
                    borderColor: context.colors.primary,
                    color: context.colors.white,
                    textColor: context.colors.primary,
                    margin: EdgeInsets.zero,
                  ),
                ),
                Gaps.hGap10,
                Expanded(
                  child: DefaultButton(
                    title: "Proceed To Checkout",
                    onTap: () =>
                        AutoRouter.of(context).popAndPush(const CartRoute()),
                    margin: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
            Gaps.vGap15,
          ],
        ),
      ),
    );
  }
}
