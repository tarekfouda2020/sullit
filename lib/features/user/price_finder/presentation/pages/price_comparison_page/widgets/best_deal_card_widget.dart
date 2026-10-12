part of 'widgets_imports.dart';

class BestDealCardWidget extends StatelessWidget {
  final PriceFinderDeal deal;
  final PriceComparisonController controller;

  const BestDealCardWidget({super.key, required this.deal, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(18),
      child: Stack(
        alignment: AlignmentDirectional.topEnd,
        children: [
          Positioned.fill(
            child: Container(
              color: context.colors.disableBlack,
            ),
          ),
          Positioned(
            top: -60,
            right: -60,
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    context.colors.darkGreen2.withValues(alpha: 0.35),
                    context.colors.darkGreen2.withValues(alpha: 0.0),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BestDealCardItemWidget(
                  deal: deal,
                ),
                Gaps.vGap18,
                Text(
                  'BEST DEAL FOUND',
                  style: AppTextStyle.s11_w500(
                    color: context.colors.grey,
                  ),
                ),
                Gaps.vGap8,
                BestPriceItemWidget(
                  controller: controller,
                  deal: deal,
                ),
                Gaps.vGap16,
                Container(
                  width: double.infinity,
                  height: 1,
                  color: context.colors.white.withValues(
                    alpha: 0.08,
                  ),
                ),
                Gaps.vGap14,
                ViewBestStoreWidget(
                  deal: deal,
                  controller: controller,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
