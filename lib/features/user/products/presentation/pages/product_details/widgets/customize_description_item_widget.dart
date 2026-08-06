part of 'product_details_widgets_imports.dart';

class CustomizeDescriptionItemWidget extends StatelessWidget {
  const CustomizeDescriptionItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Description :",
            style: AppTextStyle.s12_w400(color: context.colors.grey),
          ),
          Gaps.vGap5,
          Text(
            "A whole chicken marinated with flavourful mixture of herb's and seasoning that gives perfect sweet and salty taste. Roast on charcoal that brings a smokey aroma. Served with And oks gravy.",
            style: AppTextStyle.s14_w600(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
