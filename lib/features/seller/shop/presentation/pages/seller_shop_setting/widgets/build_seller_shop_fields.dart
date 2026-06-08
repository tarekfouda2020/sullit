part of 'seller_shop_setting_widgets_imports.dart';

class BuildSellerShopFields extends StatelessWidget {
  final SellerShopSettingController sellerShopSettingController;

  const BuildSellerShopFields(
      {Key? key, required this.sellerShopSettingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: sellerShopSettingController.formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BuildBasicFields(
            sellerShopSettingController: sellerShopSettingController,
          ),
          BuildBannerSetting(
            sellerShopSettingController: sellerShopSettingController,
          ),
          BuildSocialMediaLinks(
            sellerShopSettingController: sellerShopSettingController,
          )
        ],
      ),
    );
  }
}
