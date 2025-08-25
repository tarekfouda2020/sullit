part of 'membership_subscribe_widgets_imports.dart';

class GetPlansButtonWidget extends StatelessWidget {
  final MembershipSubscribeController controller;
  const GetPlansButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: () => controller.showVipPlansBottomSheet(context),
      title: tr("getMembershipPlans"),
      color: context.colors.white,
      textColor: context.colors.primary,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 45,
      borderRadius: Dimens.borderRadius30PX,
      margin: EdgeInsets.zero,
    );
  }
}
