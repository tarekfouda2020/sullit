part of 'register_widgets_imports.dart';

class RegisterShopButton extends StatelessWidget {
  final RegisterShopController registerShopController;

  const RegisterShopButton({Key? key, required this.registerShopController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LoadingButton(
      title: tr('registerYourShop'),
      onTap: () {},
      color: context.colors.primary,
      textColor: context.colors.white,
      btnKey: registerShopController.createBtnKey,
      margin: const EdgeInsets.only(top: 10, bottom: 20).r,
      fontSize: 10,
      height: 40.h,
    );
  }
}
