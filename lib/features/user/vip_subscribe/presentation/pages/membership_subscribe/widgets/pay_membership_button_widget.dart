part of 'membership_subscribe_widgets_imports.dart';

class PayMembershipButtonWidget extends StatelessWidget {
  final MembershipSubscribeController controller;
  const PayMembershipButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      onTap: ()=> controller.showPayMethodsSheet(context),
      title: "Continue To Payment",
      height: 50,
      fontSize: 18,
      fontWeight: FontWeight.w700,
      color: context.colors.primary,
      textColor: context.colors.white,
      borderRadius: Dimens.borderRadius30PX
    );
  }
}
