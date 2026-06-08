part of 'vip_memberships_widgets_imports.dart';

class RenewPlanButtonWidget extends StatelessWidget {
  final VipMembershipsController controller;

  const RenewPlanButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
        onTap: _isDisabled() ? () {} : () => controller.onPressRenew(context),
        title: tr("renew"),
        disabled: _isDisabled(),
        elevation: 0,
        borderColor: Colors.transparent,
        color: _isDisabled()
            ? context.colors.primary.withOpacity(0.4)
            : context.colors.primary,
        textColor: _isDisabled()
            ? context.colors.white.withOpacity(0.4)
            : context.colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 50,
        borderRadius: Dimens.borderRadius30PX,
        margin: Dimens.marginTop8Bottom20);
  }

  bool _isDisabled() {
    return controller.currentSubscriptionBloc.state.data!.currentSubscription!
            .isExpired ==
        false;
  }
}
