part of 'seller_order_details_widgets_imports.dart';

class BuildAdditionalInfo extends StatelessWidget {
  const BuildAdditionalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(Dimens.dp10),
          child: Text(
            "Additional Info : ",
            style: AppTextStyle.s14_w600(
              color: context.colors.primary,
            ),
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              8,
              (index) => const BuildAdditionalInfoItem(),
            ),
          ),
        ),
      ],
    );
  }
}
