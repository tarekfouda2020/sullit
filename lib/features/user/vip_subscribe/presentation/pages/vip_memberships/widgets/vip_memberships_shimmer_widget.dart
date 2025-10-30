part of 'vip_memberships_widgets_imports.dart';

class VipMembershipsShimmerWidget extends StatelessWidget {
  const VipMembershipsShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: Dimens.paddingHorizontal20PX,
      child: Column(
        children: [
          _buildCurrentSubscriptionShimmer(context),
          Gaps.vGap20,
          _buildOtherPlansTitleShimmer(context),
          Gaps.vGap10,
          ...List.generate(2, (index) => _buildMembershipItemShimmer(context)),
          _buildChangePlanButtonShimmer(context),
        ],
      ),
    );
  }

  Widget _buildCurrentSubscriptionShimmer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const BuildShimmerItem(
          height: 18,
          width: 150,
        ),
        Gaps.vGap10,
        _buildMembershipItemShimmer(context),
        _buildRenewButtonShimmer(context),
      ],
    );
  }

  Widget _buildOtherPlansTitleShimmer(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildShimmerItem(
          height: 18,
          width: 100,
        ),
      ],
    );
  }

  Widget _buildMembershipItemShimmer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 8),
      padding: const EdgeInsetsDirectional.only(start: 22, end: 15, top: 15, bottom: 13),
      decoration: CustomDecoration(
        radius: BorderRadius.circular(12),
      ).copyWith(
        border: Border.all(color: context.colors.borderColor, width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BuildShimmerItem(
                height: 14,
                width: 120,
              ),
              BuildShimmerItem(
                height: 20,
                width: 20,
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
            ],
          ),
          Gaps.vGap12,
          Row(
            children:  [
              const BuildShimmerItem(
                height: 22,
                width: 80,
              ),
              Gaps.hGap8,
              const BuildShimmerItem(
                height: 22,
                width: 60,
              ),
            ],
          ),
          Gaps.vGap6,
          const BuildShimmerItem(
            height: 12,
            width: 70,
          ),
          Gaps.vGap8,
          Column(
            children: List.generate(3, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 6),
                child: Row(
                  children: [
                    const BuildShimmerItem(
                      height: 5,
                      width: 5,
                    ),
                    Gaps.hGap10,
                    const BuildShimmerItem(
                      height: 12,
                      width: 120,
                    ),
                  ],
                ),
              );
            }),
          ),
          Gaps.vGap15,
          const BuildShimmerItem(
            height: 12,
            width: 100,
          ),
        ],
      ),
    );
  }

  Widget _buildRenewButtonShimmer(BuildContext context) {
    return Container(
      margin: Dimens.marginTop8Bottom20,
      child: const BuildShimmerItem(
        height: 50,
        width: double.infinity,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }

  Widget _buildChangePlanButtonShimmer(BuildContext context) {
    return Container(
      margin: Dimens.marginTop8Bottom20,
      child: const BuildShimmerItem(
        height: 50,
        width: double.infinity,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
    );
  }
}
