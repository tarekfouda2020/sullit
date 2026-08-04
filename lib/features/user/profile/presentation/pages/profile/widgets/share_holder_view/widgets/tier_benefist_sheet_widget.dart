part of 'share_holder_view_widgets_imports.dart';

class TierBenefistSheetWidget extends StatelessWidget {
  final ProfileController controller;
  const TierBenefistSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return Container(
      padding: Dimens.paddingAll15PX,
      margin: const EdgeInsets.only(top: kToolbarHeight),
      decoration: BoxDecoration(
          color: context.colors.white, borderRadius: Dimens.sheetBorderRadius),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(title: tr("benefits")),
          Gaps.vGap10,
          SingleChildScrollView(
            child: Column(
              children: [
                Html(
                  data: getIt<Utilities>().cleanHtml(controller
                      .currentSubscriptionBloc
                      .state
                      .data!
                      .currentSubscription!
                      .description),
                  style: {
                    "body": Style(
                      color: context.colors.black,
                      fontSize: FontSize(15),
                      fontWeight: FontWeight.w500,
                      alignment: lang == LangCodeHelper.langAR
                          ? Alignment.centerLeft
                          : Alignment.centerRight,
                      margin: Margins.all(0),
                      padding: HtmlPaddings.all(0),
                    ),
                    "ul": Style(
                      margin: Margins.all(0),
                      padding: HtmlPaddings.all(0),
                      color: context.colors.black,
                      fontSize: FontSize(15),
                      fontWeight: FontWeight.w500,
                    ),
                    "li": Style(
                      margin: Margins.all(0),
                      padding: HtmlPaddings.all(0),
                      color: context.colors.black,
                      fontSize: FontSize(15),
                      fontWeight: FontWeight.w500,
                    ),
                    "strong": Style(
                      color: context.colors.black,
                      fontSize: FontSize(15),
                      fontWeight: FontWeight.w500,
                    ),
                    "em": Style(
                      color: context.colors.black,
                      fontSize: FontSize(15),
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
