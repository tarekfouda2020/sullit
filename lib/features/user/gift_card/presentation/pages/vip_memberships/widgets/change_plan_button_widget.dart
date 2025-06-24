part of 'vip_memberships_widgets_imports.dart';

class ChangePlanButtonWidget extends StatelessWidget {
  final VipMembershipsController controller;
  final bool isDisabled;
  const ChangePlanButtonWidget({super.key, required this.controller, required this.isDisabled});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
        onTap: () => controller.changePlan(),
        title: "Change Plan",
        disabled: isDisabled,
        elevation: 0,
        borderColor: Colors.transparent,
        color: isDisabled
            ?context.colors.primary.withOpacity(0.4)
            :context.colors.primary,
        textColor: isDisabled
            ?context.colors.white.withOpacity(0.4)
            :context.colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 50,
        borderRadius: Dimens.borderRadius30PX,
        margin: Dimens.marginTop8Bottom20
    );
  }
}
