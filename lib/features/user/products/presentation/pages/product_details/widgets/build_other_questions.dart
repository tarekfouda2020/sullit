part of 'product_details_widgets_imports.dart';

class BuildOtherQuestions extends StatelessWidget {
  final ProductQueries productQueries;

  const BuildOtherQuestions({Key? key, required this.productQueries})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Visibility(
        visible: productQueries.otherProductQueries.isNotEmpty,
        child: Container(
          height: 150.spMin,
          padding: Dimens.paddingAll8PX,
          margin: Dimens.standardPadding,
          decoration: CustomDecoration(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gaps.vGap10,
              Text(
                "Other Questions : ",
                style: AppTextStyle.s15_w700(
                  color: context.colors.black,
                ),
              ),
              Flexible(
                child: SingleChildScrollView(
                  padding: Dimens.paddingVertical10PX,
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ...List.generate(
                        productQueries.otherProductQueries.length,
                        (index) {
                          return BuildQuestionItem(
                            queryModel: productQueries.otherProductQueries[index],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
