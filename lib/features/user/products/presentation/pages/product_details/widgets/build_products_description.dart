part of 'product_details_widgets_imports.dart';

class BuildProductDescription extends StatelessWidget {
  final String description;

  const BuildProductDescription({super.key, required this.description});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible:description.isNotEmpty,
      child: Container(
        decoration:  CustomDecoration(
            radius: BorderRadius.circular(12)
        ),
        padding: Dimens.paddingS22T10B10,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "${tr('description')} : ",
              style: AppTextStyle.s12_w400(
                color: context.colors.textColor,
              ),
            ),
            Html(
              data: description,
              style: {
                "body": Style(
                  color: Colors.black,
                  margin: Margins.zero,
                  fontSize: FontSize(
                    Dimens.font_sp14.sp,
                  ),
                  fontWeight: FontWeight.w600,
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
