part of 'seller_products_widgets_imports.dart';

class SellerDetailsAppBar extends StatelessWidget {
  final SellerProductsController controller;

  const SellerDetailsAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<Shop?>, GenericState<Shop?>>(
      bloc: controller.shopCubit,
      builder: (context, state) {
        final shopModel = state.data;
        return SliverAppBar(
          backgroundColor: context.colors.white,
          pinned: true,
          elevation: 0,
          automaticallyImplyLeading: true,
          leading: const BackButton(color: Colors.black),
          title: Text(
            shopModel?.name ?? "",
            style: AppTextStyle.s20_w700(color: context.colors.black),
          ),
          expandedHeight: 500,
          flexibleSpace: FlexibleSpaceBar(
            background: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.paddingOf(context).top + kToolbarHeight,
                  left: 16,
                  right: 16),
              child: shopModel != null
                  ? SellerCardWidget(shop: shopModel)
                  : const BuildShimmerItem(height: 300),
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
                  if (shopModel?.categories != null)
                    SellerPageCategoriesWidget(
                      category: shopModel!.categories!,
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
      },
    );
  }
}
