part of 'membership_subscribe_widgets_imports.dart';

class GetPlansWidget extends StatelessWidget {
  final MembershipSubscribeController controller;
  final SubscribeContentDomainModel model;
  const GetPlansWidget({super.key, required this.controller, required this.model});

  @override
  Widget build(BuildContext context) {
    return  Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        Container(
          padding: Dimens.paddingH35V26,
          margin: const EdgeInsets.only(top: 85),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
                colors: [
               context.colors.darkRed,
               context.colors.primary,
            ])
          ),
          child: Column(
            children: [
              Gaps.vGap(60),
              Text(tr("saveYourMoneyWith"),
              style: AppTextStyle.s22_w400(color: context.colors.white),
              ),
              Gaps.vGap11,
              Text(model.title,
                style: AppTextStyle.s28_w700(color: context.colors.white),
              ),
              Gaps.vGap21,
              GetPlansButtonWidget(controller: controller)
            ],
          ),
        ),
        Positioned(
          child: SvgPicture.asset(Res.redVipMark),
        )
      ],
    );
  }
}
