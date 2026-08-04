part of 'seller_dashboard_widgets_imports.dart';

class BuildSettings extends StatelessWidget {
  const BuildSettings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.symmetric(vertical: Dimens.dp10),
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: GridFixedHeightDelegate(
        crossAxisCount: 2,
        height: 90.h,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      children: [
        BuildSettingItem(
          title: "Money Withdraw",
          iconData: CupertinoIcons.creditcard,
          onTap: () =>
              AutoRouter.of(context).push(const SellerMoneyWithDrawRoute()),
        ),
        BuildSettingItem(
          title: "Add New Product",
          iconData: CupertinoIcons.add,
          onTap: () =>
              AutoRouter.of(context).push(const SellerAddProductRoute()),
        ),
        BuildSettingItem(
          title: "Shop Settings",
          iconData: Icons.storefront_outlined,
          onTap: () =>
              AutoRouter.of(context).push(const SellerShopSettingRoute()),
        ),
        BuildSettingItem(
          title: "Payment Settings",
          iconData: Icons.credit_score_outlined,
          onTap: () =>
              AutoRouter.of(context).push(const SellerPaymentSettingRoute()),
        ),
      ],
    );
  }
}
