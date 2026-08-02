part of 'order_details_widgets_imports.dart';

class OrderDetailsSummaryShimmerWidget extends StatelessWidget {
  const OrderDetailsSummaryShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB(21, 19, 19, 15),
      decoration: CustomDecoration(
        boxBorder: Border.all(color: context.colors.gray3),
        myBoxShadow: const [],
      ),
      child: Column(
        children: [
          ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Row(
                  children: [
                    BuildShimmerItem(
                      height: 14,
                      width: 100,
                      borderRadius: Dimens.borderRadius10PX,
                    ),
                    const Spacer(),
                    BuildShimmerItem(
                      height: 14,
                      width: 60,
                      borderRadius: Dimens.borderRadius10PX,
                    ),
                  ],
                ),
              );
            },
          ),
          Gaps.vGap10,
          Gaps.line(context.colors.softGray, 0),
          Gaps.vGap13,
          Row(
            children: [
              BuildShimmerItem(
                height: 18,
                width: 60,
                borderRadius: Dimens.borderRadius10PX,
              ),
              const Spacer(),
              BuildShimmerItem(
                height: 18,
                width: 80,
                borderRadius: Dimens.borderRadius10PX,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
