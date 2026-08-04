part of 'categories_widgets_imports.dart';

class CategoriesHeaderTitleWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;

  const CategoriesHeaderTitleWidget(
      {super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
            child: Text(title,
                style: AppTextStyle.s16_w600(color: context.colors.black)
                    .copyWith(height: 1.3))),
        Gaps.hGap8,
        GestureDetector(
          onTap: onTap,
          child: Text(
            tr('seeAll'),
            style: AppTextStyle.s12_w400(color: context.colors.primary),
          ),
        ),
      ],
    );
  }
}
