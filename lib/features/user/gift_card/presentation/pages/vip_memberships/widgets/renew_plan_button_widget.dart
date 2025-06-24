part of 'vip_memberships_widgets_imports.dart';


class RenewPlanButtonWidget extends StatelessWidget {
  final VipMembershipsController controller;
  const RenewPlanButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: () => controller.renewPlan(),
      title: "Renew",
      color: context.colors.primary,
      textColor: context.colors.white,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      height: 50,
      borderRadius: Dimens.borderRadius30PX,
      margin: Dimens.marginTop8Bottom20
    );
  }
}
