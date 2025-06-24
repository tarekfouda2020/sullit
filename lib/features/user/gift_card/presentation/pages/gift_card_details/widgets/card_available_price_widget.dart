part of 'gift_card_details_widgets_imports.dart';

class CardAvailablePrice extends StatelessWidget {
  const CardAvailablePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Remain amount", style: AppTextStyle.s22_w400(color: context.colors.black)),
          Gaps.hGap5,
          Text("80.00 AED", style: AppTextStyle.s24_w700(color: context.colors.primary)),
        ],
      ),
    );
  }
}
