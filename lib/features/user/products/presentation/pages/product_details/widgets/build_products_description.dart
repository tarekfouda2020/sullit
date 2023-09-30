part of 'product_details_widgets_imports.dart';

class BuildProductDescription extends StatelessWidget {
  final String description;

  const BuildProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "${tr('description')} : ",
          style: AppTextStyle.s15_w700(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap8,
        Text(
          description,
          style: AppTextStyle.s13_w400(color: context.colors.black),
        ),
      ],
    );
  }
}
