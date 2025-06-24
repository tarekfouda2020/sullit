part of 'membership_subscribe_widgets_imports.dart';

class AboutGiftCardWidget extends StatelessWidget {
  const AboutGiftCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  CustomDecoration(
          radius: BorderRadius.circular(12),
        boxBorder: Border.all(color: context.colors.borderColor,width: 1)
      ),
      padding: const EdgeInsets.fromLTRB(23, 13, 23, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About",
          style: AppTextStyle.s12_w400(color: context.colors.textColor),
          ),
          Gaps.vGap4,
          Text("Until you subscribe in any of subscription plans you have access to buy products categorized under VIP offers to save your money",
            style: AppTextStyle.s14_w600(color: context.colors.black).copyWith(
              height: 1.5
            ),
          ),
        ],
      ),
    );
  }
}
