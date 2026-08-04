part of 'support_tickets_sheet_widgets_imports.dart';

class BuildHeaderText extends StatelessWidget {
  const BuildHeaderText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap24,
        Padding(
          padding: Dimens.paddingHorizontal15PX,
          child: Text(
            tr('tickets'),
            style: AppTextStyle.s16_w500(color: context.colors.black),
          ),
        ),
      ],
    );
  }
}
