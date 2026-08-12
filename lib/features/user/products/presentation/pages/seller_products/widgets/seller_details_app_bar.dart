part of 'seller_products_widgets_imports.dart';

class SellerDetailsAppBar extends StatelessWidget {
  final SellerProductsController controller;

  const SellerDetailsAppBar({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: context.colors.white,
      pinned: true,
      elevation: 0,
      automaticallyImplyLeading: true,
      leading: const BackButton(color: Colors.black),
      title: BlocBuilder<GenericBloc<Shop?>, GenericState<Shop?>>(
        bloc: controller.shopCubit,
        builder: (context, state) {
          return Text(
            state.data?.name ?? "",
            style: AppTextStyle.s20_w700(color: context.colors.black),
          );
        },
      ),
      expandedHeight: 550,
      flexibleSpace: FlexibleSpaceBar(
        background: Padding(
          padding: EdgeInsets.only(
              top: MediaQuery.paddingOf(context).top + kToolbarHeight,
              left: 16,
              right: 16),
          child: BlocBuilder<GenericBloc<Shop?>, GenericState<Shop?>>(
            bloc: controller.shopCubit,
            builder: (context, state) {
              var shopModel = state.data;
              return shopModel != null
                  ? SellerCardWidget(
                      shop: shopModel.toShopCardDomainModel(),
                      openImage: true,
                    )
                  : const SellerCardShimmerWidget();
            },
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(220),
        child: Container(
          color: context.colors.white,
          child: Column(
            children: [
              Gaps.vGap10,
              DefaultButton(
                title: tr('inStoreShopping'),
                margin: const EdgeInsets.symmetric(horizontal: 18),
                width: 230,
                fontSize: 14,
                onTap: () =>
                    controller.routeToInstoreShopping(context),
              ),
              Gaps.vGap10,
              SellerPageProductsSectionWidget(
                controller: controller,
              ),
              Gaps.vGap12,
              BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: controller.refreshCategories,
                builder: (context, state) {
                  if (!state.data) {
                    return const SellerCategoriesShimmerWidget();
                  }
                  return Visibility(
                    visible: controller
                            .categoriesPagingController.itemList
                            ?.isNotEmpty ==
                        true,
                    child: SellerPageCategoriesWidget(
                      controller: controller,
                    ),
                  );
                },
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
