part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyApplyGiftCardWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;
  const PharmacyApplyGiftCardWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.giftCardSheet(context),
      child: Row(
        children: [
          Text(tr("orApplyGiftCard"),
              style: AppTextStyle.s14_w400(color: context.colors.primary)),
          Gaps.hGap7,
          Icon(Icons.arrow_forward, color: context.colors.primary)
        ],
      ),
    );
  }
}
