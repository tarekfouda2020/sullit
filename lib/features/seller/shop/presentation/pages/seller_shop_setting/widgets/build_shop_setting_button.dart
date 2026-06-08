part of 'seller_shop_setting_widgets_imports.dart';

class BuildShopSettingButton extends StatelessWidget {
  const BuildShopSettingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
        title: "Save ",
        height: 35.h,
        fontSize: 12,
        color: context.colors.darkPurple,
        borderRadius: BorderRadius.circular(7).r,
        margin: const EdgeInsets.symmetric(vertical: 10).r,
        onTap: () {});
  }
}
