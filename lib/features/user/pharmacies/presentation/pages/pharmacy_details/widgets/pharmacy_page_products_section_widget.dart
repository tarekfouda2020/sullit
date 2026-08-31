part of 'widgets_imports.dart';

class PharmacyPageProductsSectionWidget extends StatelessWidget {
  final String title;
  const PharmacyPageProductsSectionWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal20PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
