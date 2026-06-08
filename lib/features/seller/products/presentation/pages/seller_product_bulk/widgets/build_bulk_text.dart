part of 'seller_product_bulk_widgets_imports.dart';

class BuildBulkText extends StatelessWidget {
  final String text;
  const BuildBulkText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10).r,
      child: Row(
        children: [
          Icon(
            Icons.circle_outlined,
            size: 8.sp,
            color: context.colors.black,
          ),
          Gaps.hGap10,
          Expanded(
            child: Text(
              text,
              style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
