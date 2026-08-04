part of 'seller_money_withdraw_widgets_imports.dart';

class BuildTableItem extends StatelessWidget {
  final String title;

  const BuildTableItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          vertical: Dimens.dp15, horizontal: Dimens.dp5),
      child: Text(
        title,
        style: AppTextStyle.s12_w400(
          color: context.colors.black,
        ),
      ),
    );
  }
}
