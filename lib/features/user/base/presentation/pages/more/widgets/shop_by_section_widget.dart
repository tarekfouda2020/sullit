part of 'more_widgets_imports.dart';

class ShopByWidget extends StatelessWidget {
  final MoreController controller;
  const ShopByWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return MoreGridViewWidget(
        title: tr("shopBy"),
        crossAxisCount: 2,
        children: [
          BuildMoreItem(
            image: Res.allBrandsIcon,
            isSvg: true,
            title: tr('allBrands'),
            onTap: () =>
                controller.checkAuth(context, MoreRoutes.allBrands),
          ),
          BuildMoreItem(
            image: Res.allCategoriesIcon,
            isSvg: true,
            title: tr('allCategories'),
            onTap: () =>
                controller.checkAuth(context, MoreRoutes.allCategories),
          ),
          // BuildMoreItem(
          //   image: Res.wishListLogo,
          //   title: tr('wishlist'),
          //   onTap: () => controller.checkAuth(context, MoreRoutes.wishlist),
          // ),
        ]
    );
  }
}
