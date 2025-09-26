part of 'membership_subscribe_widgets_imports.dart';

class AboutGiftCardWidget extends StatelessWidget {
  final SubscribeContentDomainModel model;
  const AboutGiftCardWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    String lang =  context.read<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      decoration: CustomDecoration(
          radius: BorderRadius.circular(12), boxBorder: Border.all(color: context.colors.borderColor, width: 1)),
      padding: const EdgeInsets.fromLTRB(23, 13, 23, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr("about"),
            style: AppTextStyle.s12_w400(color: context.colors.textColor),
          ),
          Gaps.vGap4,
          SingleChildScrollView(
            child: Html(
              data: getIt<Utilities>().cleanHtml(model.description),
              style: {
                "body": Style(
                  color: context.colors.blackTextColor,
                  fontSize: FontSize(15),
                  fontWeight: FontWeight.w400,
                  fontFamily: GoogleFonts.openSans().fontFamily,
                  lineHeight: LineHeight(1.4),
                  // سطر أقصر
                  margin: Margins.zero,
                  padding: HtmlPaddings.zero,
                ),
                "p": Style(
                  margin: Margins.symmetric(vertical: 2), // مسافة صغيرة بين الفقرات
                  padding: HtmlPaddings.zero,
                  fontSize: FontSize(14),
                  fontWeight: FontWeight.w400,
                ),
                "ul": Style(
                  margin: Margins.zero,
                  padding: HtmlPaddings.only(left: 14),
                  fontSize: FontSize(14),
                ),
                "li": Style(
                  margin: Margins.symmetric(vertical: 2),
                  padding: HtmlPaddings.zero,
                  fontSize: FontSize(14),
                ),
                "h2": Style(
                  fontSize: FontSize(16),
                  fontWeight: FontWeight.bold,
                  margin: Margins.symmetric(vertical: 6),
                  padding: HtmlPaddings.zero,
                  color: context.colors.blackTextColor,
                ),
                "strong": Style(
                  fontWeight: FontWeight.bold,
                ),
              },
            ),
          ),
          // Html(data: model.description,
          //   style: {
          //     "body": Style(
          //       color: context.colors.blackTextColor,
          //       fontSize: FontSize(14),
          //       fontWeight: FontWeight.w600,
          //       fontFamily: GoogleFonts.openSans().fontFamily,
          //       alignment: lang == "ar" ? Alignment.centerLeft : Alignment.centerRight,
          //       margin: Margins.all(0),
          //       padding: HtmlPaddings.all(0),
          //     ),
          //     "ul": Style(
          //       margin: Margins.all(0),
          //       padding: HtmlPaddings.all(0),
          //     ),
          //     "li": Style(
          //       margin: Margins.all(0),
          //       padding:HtmlPaddings.all(0),
          //     ),
          //   },
          //
          // )
        ],
      ),
    );
  }
}
