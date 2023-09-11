part of 'compare_widgets_imports.dart';

class BuildHeaderText extends StatelessWidget {
  final String text;
  final String details;
  final Color? detailsColor;

  const BuildHeaderText(
      {super.key,
      required this.text,
      required this.details,
      this.detailsColor});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: Dimens.dp5),
      child: Row(
        children: [
          Text(
            text,
            style: AppTextStyle.s15_w400(color: context.colors.black),
          ),
          Flexible(
            child: Text(
              details,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s15_w500(
                color: detailsColor ?? context.colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
