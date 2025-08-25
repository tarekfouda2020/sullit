part of 'membership_subscribe_widgets_imports.dart';

class AboutGiftCardWidget extends StatelessWidget {
  final SubscribeContentDomainModel model;
  const AboutGiftCardWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    String lang =  context.read<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      decoration:  CustomDecoration(
          radius: BorderRadius.circular(12),
        boxBorder: Border.all(color: context.colors.borderColor,width: 1)
      ),
      padding: const EdgeInsets.fromLTRB(23, 13, 23, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tr("about"),
          style: AppTextStyle.s12_w400(color: context.colors.textColor),
          ),
          Gaps.vGap4,
          Html(data: model.description,
            style: {
              "body": Style(
                color: context.colors.blackTextColor,
                fontSize: FontSize(14),
                fontWeight: FontWeight.w600,
                fontFamily: GoogleFonts.openSans().fontFamily,
                alignment: lang == "ar" ? Alignment.centerLeft : Alignment.centerRight,
                margin: Margins.all(0),
                padding: HtmlPaddings.all(0),
              ),
              "ul": Style(
                margin: Margins.all(0),
                padding: HtmlPaddings.all(0),
              ),
              "li": Style(
                margin: Margins.all(0),
                padding:HtmlPaddings.all(0),
              ),
            },

          )
        ],
      ),
    );
  }
}
