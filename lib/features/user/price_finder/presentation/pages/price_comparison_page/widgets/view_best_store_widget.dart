part of 'widgets_imports.dart';

class ViewBestStoreWidget extends StatelessWidget {
  final PriceFinderDeal deal;
  final PriceComparisonController controller;

  const ViewBestStoreWidget({super.key, required this.deal, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              Gaps.hGap10,
              Expanded(
                child: Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Available at',
                      style: AppTextStyle.s11_w400(
                        color: context.colors.grey,
                      ),
                    ),
                    Row(
                      spacing: 5,
                      children: [
                        SvgPicture.asset(
                          Res.homeIcon,
                        ),
                        Expanded(
                          child: Text(
                            deal.storeName,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: AppTextStyle.s14_w700(
                              color: context.colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text(
                      '${deal.distanceKm.toStringAsFixed(2)} km away',
                      style: AppTextStyle.s11_w400(
                        color: context.colors.darkGreen3,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () => controller.openStoreDetails(context, deal.shopId),
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: context.colors.darkGreen4,
              ),
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 10,
            ),
            child: Text(
              'View Store',
              style: AppTextStyle.s12_w700(
                color: context.colors.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
