part of 'pro_offers_imports.dart';

class ProOffers extends StatefulWidget {
  const ProOffers({super.key});

  @override
  State<ProOffers> createState() => _ProOffersState();
}

class _ProOffersState extends State<ProOffers> {

  final ProOffersController controller = ProOffersController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: Column(
        children: [
          VipOffersWidget(
            onTap: () => AutoRouter.of(context).push(const MembershipSubscribeRoute()),
            text: tr("subscribeNow"),
          ),
          Gaps.vGap10,
          Expanded(
            child: GenericListView<Product>(
              type: ListViewType.gridApi,
              onRefresh: controller.getArrival,
              cubit: controller.vipOffersCubit,
              runSpacing: 15.r,
              spacing: 15.r,
              gridCrossCount: 2,
              gridItemHeight: 220.spMin,
              padding: Dimens.paddingAll15PX,
              itemBuilder: (_, index, item) {
                item as Product;
                return BuildProductItem(
                  productModel: item,
                  showVipDiscount: item.hasVipOffer,
                  onFavRefresh: () => controller.onChangeFav(item),
                );
              },
              loadingWidget: const BuildLoadingProductsGridView(),
              emptyWidget: const BuildEmptyDataView(),
            ),
          ),
        ],
      ),
    );
  }
}
