part of 'imports.dart';

class BestDealCardWidget extends StatelessWidget {
  const BestDealCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.colors.disableBlack,
        borderRadius: BorderRadius.circular(18),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            offset: const Offset(6, 12),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
            decoration: BoxDecoration(
                color: context.colors.disableBlack,
                borderRadius: BorderRadius.circular(30),
                border: Border.all(color: context.colors.darkGreen2)),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(4),
                        decoration: BoxDecoration(color: context.colors.darkGreen3, shape: BoxShape.circle),
                        child: SvgPicture.asset(Res.offerIcon),
                      ),
                      Gaps.hGap8,
                      Text(
                        'LOWEST PRICE',
                        style: AppTextStyle.s12_w400(color: context.colors.darkGreen3),
                      ),
                    ],
                  ),
                ),
                Gaps.hGap8,
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  decoration: BoxDecoration(
                    color: context.colors.darkGreen4,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.trending_down, color: context.colors.darkGreen3, size: 12),
                      Gaps.hGap4,
                      Text(
                        'Save',
                        style: AppTextStyle.s11_w400(color: context.colors.white),
                      ),
                      Gaps.hGap4,
                      DirhamPrice(
                        amount: "8.50",
                        textStyle: AppTextStyle.s11_w400(color: context.colors.white),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap18,
          Text(
            'BEST DEAL FOUND',
            style: AppTextStyle.s11_w500(color: context.colors.grey),
          ),
          Gaps.vGap8,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DirhamPrice(
                amount: "8.50",
                textStyle: AppTextStyle.s32_w700(color: context.colors.darkGreen3),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 8),
                decoration: BoxDecoration(
                  color: context.colors.darkGreen3,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(Res.shopIcon),
                    Gaps.hGap8,
                    Text(
                      'Add to Cart',
                      style: AppTextStyle.s12_w700(color: context.colors.black),
                    ),
                  ],
                ),
              )
            ],
          ),
          Gaps.vGap16,
          Container(
            width: double.infinity,
            height: 1,
            color: context.colors.white.withValues(alpha: 0.08),
          ),
          Gaps.vGap14,
          Row(
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
                            style: AppTextStyle.s11_w400(color: context.colors.grey),
                          ),
                          Row(
                            spacing: 5,
                            children: [
                              SvgPicture.asset(Res.homeIcon),
                              Text(
                                "Sahla Shop",
                                style: AppTextStyle.s14_w700(color: context.colors.white),
                              ),
                            ],
                          ),
                          Text(
                            "2.1 km away",
                            style: AppTextStyle.s11_w400(color: context.colors.darkGreen3),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: context.colors.darkGreen4), borderRadius: BorderRadius.circular(12)),
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Text(
                  'View Store',
                  style: AppTextStyle.s12_w700(color: context.colors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
