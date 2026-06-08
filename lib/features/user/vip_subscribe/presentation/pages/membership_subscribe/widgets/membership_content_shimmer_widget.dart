part of 'membership_subscribe_widgets_imports.dart';

class MembershipContentShimmerWidget extends StatelessWidget {
  const MembershipContentShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.paddingHorizontal20PX,
      children: [
        _buildHeaderLogoShimmer(context),
        _buildGetPlansShimmer(context),
        Gaps.vGap19,
        _buildAboutGiftCardShimmer(context),
      ],
    );
  }

  Widget _buildHeaderLogoShimmer(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5),
      child: const BuildShimmerItem(
        height: 60,
        width: 120,
      ),
    );
  }

  Widget _buildGetPlansShimmer(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: Dimens.paddingH35V26,
          margin: const EdgeInsets.only(top: 85),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: context.colors.offWhite,
          ),
          child: Column(
            children: [
              Gaps.vGap(60),
              const BuildShimmerItem(
                height: 22,
                width: 200,
              ),
              Gaps.vGap11,
              const BuildShimmerItem(
                height: 28,
                width: 150,
              ),
              Gaps.vGap21,
              BuildShimmerItem(
                height: 50,
                width: MediaQuery.of(context).size.width,
                borderRadius: const BorderRadius.all(Radius.circular(25)),
              ),
            ],
          ),
        ),
        const Positioned(
          top: 30,
          child: BuildShimmerItem(
            height: 120,
            width: 130,
            borderRadius: BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ],
    );
  }

  Widget _buildAboutGiftCardShimmer(BuildContext context) {
    return Container(
      decoration: CustomDecoration(
        radius: BorderRadius.circular(12),
        boxBorder: Border.all(color: context.colors.borderColor, width: 1),
      ),
      padding: const EdgeInsets.fromLTRB(23, 13, 23, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildShimmerItem(
            height: 12,
            width: 50,
          ),
          Gaps.vGap4,
          Column(
            children: List.generate(4, (index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 8),
                child: BuildShimmerItem(
                  height: 14,
                  borderRadius: const BorderRadius.all(Radius.circular(8)),
                  width: MediaQuery.of(context).size.width,
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}
