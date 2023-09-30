part of 'build_register_widgets_imports.dart';

class BuildSellerButton extends StatelessWidget {
  final RegisterController registerController;

  const BuildSellerButton({Key? key, required this.registerController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          tr('becomeASeller'),
          style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
        ),
        Gaps.vGap8,
        LoadingButton(
          title: tr('applyNow'),
          onTap: () => AutoRouter.of(context).push(const RegisterShopRoute()),
          color: context.colors.primary,
          textColor: context.colors.white,
          btnKey: registerController.sellerBtnKey,
          margin: EdgeInsets.zero,
          height: 40.h,
          width: 100.w,
        ),
        Gaps.vGap8,

      ],
    );
  }
}
