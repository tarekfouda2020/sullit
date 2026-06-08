part of 'vip_memberships_widgets_imports.dart';

class SeeMemberShipsButtonWidget extends StatelessWidget {
  const SeeMemberShipsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
        onTap: () => AutoRouter.of(context).push(MembershipSubscribeRoute()),
        title: tr("seeMembershipPlans"),
        elevation: 0,
        borderColor: Colors.transparent,
        color: context.colors.primary,
        textColor: context.colors.white,
        fontSize: 18,
        fontWeight: FontWeight.w700,
        height: 50,
        borderRadius: Dimens.borderRadius30PX,
        margin: Dimens.marginTop8Bottom20);
  }
}
