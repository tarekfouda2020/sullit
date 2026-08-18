part of 'seller_money_withdraw_widgets_imports.dart';

class BuildTableHeader extends StatelessWidget {
  final String title;

  const BuildTableHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
              vertical: Dimens.dp10, horizontal: Dimens.dp5)
          .r,
      child: Text(
        title,
        style: AppTextStyle.s13_w500(
          color: context.colors.black,
        ),
      ),
    );
  }
}
