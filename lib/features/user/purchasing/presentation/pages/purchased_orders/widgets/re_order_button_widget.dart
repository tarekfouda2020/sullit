part of 'purchased_orders_widgets_imports.dart';


class ReOrderButtonWidget extends StatelessWidget {
  final Color? bgColor;
  final void Function() onPress;
  const ReOrderButtonWidget({super.key, this.bgColor, required this.onPress,});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "Reorder",
    textColor: context.colors.primary,
    height: Dimens.dp40,
    color: bgColor ?? context.colors.white,
      borderColor: context.colors.primary,
      onTap: onPress,
      margin: EdgeInsets.zero,

    );
  }
}
