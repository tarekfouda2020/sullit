part of 'product_details_widgets_imports.dart';

class CustomizeRadioItem extends StatelessWidget {
  const CustomizeRadioItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(
          color: context.colors.white,
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.radio_button_off,
            color: context.colors.grey,
          ),
          Gaps.hGap12,
          Expanded(
            child: Text(
              "Extra Garlic Sauce",
              style: AppTextStyle.s16_w400(color: context.colors.black),
            ),
          ),
          Text(
            "+  0.50",
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
