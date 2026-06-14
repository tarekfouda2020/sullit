part of 'product_details_widgets_imports.dart';

class BuildProductDescription extends StatelessWidget {
  final String description;
  final ProductDetailsController controller;

  const BuildProductDescription({
    super.key,
    required this.description,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: description.isNotEmpty,
      child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
        bloc: controller.showAllDescriptionCubit,
        builder: (context, state) {
           bool isExpanded = state.data;
          return Container(
            decoration: CustomDecoration(radius: BorderRadius.circular(12)),
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
                Gaps.vGap4,
                Stack(
                  children: [
                    AnimatedSize(
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                      child: ConstrainedBox(
                        constraints: isExpanded
                            ? const BoxConstraints()
                            : const BoxConstraints(maxHeight: 100),
                        child: isHtml
                            ? Html(
                                data: description,
                                style: {
                                  "body": Style(
                                    color: context.colors.black,
                                    margin: Margins.zero,
                                    padding: HtmlPaddings.zero,
                                    fontSize: FontSize(Dimens.font_sp14.sp),
                                    fontWeight: FontWeight.w400,
                                    lineHeight: const LineHeight(1.6),
                                  ),
                                  "p": Style(
                                    margin: Margins.only(top: 0, bottom: 10),
                                    padding: HtmlPaddings.zero,
                                  ),
                                  "span": Style(
                                    color: context.colors.black,
                                  ),
                                  "br": Style(
                                    margin: Margins.only(bottom: 6),
                                  ),
                                  "ul": Style(
                                    margin: Margins.only(left: 12, bottom: 10),
                                  ),
                                  "li": Style(
                                    margin: Margins.only(bottom: 4),
                                  ),
                                },
                              )
                            : Text(
                                getIt<Utilities>().formatDescription(description),
                                style: AppTextStyle.s14_w400(
                                  color: context.colors.black,
                                ).copyWith(height: 1.6),
                              ),
                      ),
                    ),
                    if (!isExpanded)
                      Positioned(
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                context.colors.white.withOpacity(0),
                                context.colors.white,
                              ],
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                Gaps.vGap8,
                GestureDetector(
                  onTap: () => controller.showAllDescriptionCubit
                      .onUpdateData(!isExpanded),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        isExpanded ? tr('see_less') : tr('see_more'),
                        style: AppTextStyle.s14_w500(
                          color: context.colors.primary,
                        ),
                      ),
                      Gaps.hGap4,
                      Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
                        color: context.colors.primary,
                        size: 18,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  bool get isHtml => getIt<Utilities>().isHtml(description);

  String parseHtmlString(String htmlString) {
    final document = parse(htmlString);
    return document.body?.text ?? htmlString;
  }
}
