part of 'product_details_widgets_imports.dart';

class CustomizeCheckItemWidget extends StatelessWidget {
  final String title;
  final String? price;

  const CustomizeCheckItemWidget({super.key, required this.title, this.price});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 15),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Icon(
            Icons.check_box_outline_blank,
            color: context.colors.grey,
          ),
          Gaps.hGap12,
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.s16_w400(color: context.colors.black),
            ),
          ),
          if (price != null)
            Text(
              price ?? "",
              style: AppTextStyle.s16_w400(color: context.colors.black),
            ),
        ],
      ),
    );
  }
}
