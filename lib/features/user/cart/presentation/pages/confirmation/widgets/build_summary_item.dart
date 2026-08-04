part of 'confirmation_w_imports.dart';

class BuildSummaryItem extends StatelessWidget {
  final String title;
  final String value;
  final bool? showDivider;
  const BuildSummaryItem(
      {Key? key,
      required this.title,
      required this.value,
      this.showDivider = true})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(
              '$title  ',
              style: const AppTextStyle.s14_w400(
                color: Colors.black,
              ),
            ),
            Expanded(
              child: Text(value,
                  style: const AppTextStyle.s12_w400(
                    color: Colors.black,
                  ).copyWith(height: 1.5)),
            ),
          ],
        ),
        Visibility(
          visible: showDivider == true,
          child: Divider(
            color: context.colors.greyWhite,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
