part of 'login_widgets_imports.dart';

class BuildDiscountDialog extends StatelessWidget {
  final String msg;

  const BuildDiscountDialog({super.key, required this.msg});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      shape: RoundedRectangleBorder(borderRadius: Dimens.borderRadius5PX),
      content: Padding(
        padding: Dimens.paddingAll15PX,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              Res.logoPng,
              scale: 4,
            ),
            Gaps.vGap20,
            Text(
              msg,
              textAlign: TextAlign.center,
              style: AppTextStyle.s14_w500(color: context.colors.black),
            )
          ],
        ),
      ),
    );
  }
}
