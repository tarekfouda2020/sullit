part of 'widgets_imports.dart';

class PharmacyPageProductsSectionWidget extends StatelessWidget {
  const PharmacyPageProductsSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal20PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tr("products"),
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
