part of 'widgets_imports.dart';


class AfterReviewHintWidget extends StatelessWidget {
  final String title;
  const AfterReviewHintWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(Icons.info, color: context.colors.redAccent),
        Gaps.hGap5,
        Expanded(
          child: Text(
            title,
            textAlign: TextAlign.center,
            style: AppTextStyle.s16_w500(color: context.colors.primary)
                .copyWith(height: 1.3),
          ),
        ),
      ],
    );
  }
}
