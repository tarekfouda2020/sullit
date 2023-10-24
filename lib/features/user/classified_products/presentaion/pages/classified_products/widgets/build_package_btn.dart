part of 'classified_products_w_imports.dart';

class BuildPackageBtn extends StatelessWidget {
  final String? package;

  final ClassifiesProductsController controller;

  const BuildPackageBtn({Key? key, this.package, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingVertical20PX,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          GestureDetector(
            onTap: () =>controller.onUpgradePackage(context),
            child: Container(
              margin: Dimens.paddingVertical10PX,
              padding: Dimens.paddingH20V10,
              decoration: CustomDecoration(),
              child: Text(
                tr('upgradePackage'),
                style: AppTextStyle.s14_w400(color: context.colors.primary),
              ),
            ),
          ),
          Text(
          package?? tr('noPackage'),
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
