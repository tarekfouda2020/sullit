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
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: VipOffersWidget(
                onTap: () => controller.routeToMembershipSubscribe(context),
                buttonText: tr("subscribeNow"),
              ),
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
                padding: Dimens.paddingH20V15,
                itemBuilder: (_, index, item) {
                  item as Product;
                  return BuildProductItem(
                    productModel: item,
                    showVipDiscount: item.hasVipOffer,
                    onFavRefresh: () => controller.onChangeFav(item),
                    onRefresh: () => controller.getArrival(refresh: true),
                  );
                },
                loadingWidget: const BuildLoadingProductsGridView(),
                emptyWidget: const BuildEmptyDataView(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
