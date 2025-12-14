part of 'purchased_orders_widgets_imports.dart';


class ReOrderButtonWidget extends StatelessWidget {
  final Color? bgColor;
  final Color? txtColor;
  final double? height;
  final void Function() onPress;
  const ReOrderButtonWidget({super.key, this.bgColor, required this.onPress, this.txtColor, this.height,});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("reorder"),
    textColor:txtColor ?? context.colors.primary,
    height: height ?? Dimens.dp40,
    color: bgColor ?? context.colors.white,
      borderColor: context.colors.primary,
      onTap: onPress,
      margin: EdgeInsets.zero,

    );
  }
}
