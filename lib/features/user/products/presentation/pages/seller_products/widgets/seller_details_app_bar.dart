part of 'seller_products_widgets_imports.dart';

class SellerDetailsAppBar extends StatelessWidget {
  final Shop shopModel;
  final SellerProductsController controller;

  const SellerDetailsAppBar({super.key, required this.shopModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.colors.white,
      pinned: true,
      elevation: 0,
      automaticallyImplyLeading: true,
      leading: const BackButton(color: Colors.black),
      title: Text(
        shopModel.name ?? "",
        style: AppTextStyle.s20_w700(color: context.colors.black),
      ),
      expandedHeight: 450,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top + kToolbarHeight, left: 16, right: 16),
          child: SellerCardWidget(
            shop: shopModel,
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(180),
        child: Container(
          color: context.colors.white,
          child: Column(
            children: [
              Gaps.vGap10,
              SellerPageProductsSectionWidget(
                controller: controller,
              ),
              Gaps.vGap12,
              SellerPageCategoriesWidget(
                category: shopModel.categories!,
                controller: controller,
              ),
              Gaps.vGap12,
              SellerProductsSearchFieldWidget(
                controller: controller,
              ),
              Gaps.vGap10,
            ],
          ),
        ),
      ),
    );
  }
}
