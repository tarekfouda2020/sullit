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
            onTap: () {},
            text: "Subscribe Now",
          ),
          Expanded(
            child: GenericListView(
              type: ListViewType.gridApi,
              onRefresh: controller.getArrival,
              cubit: controller.arrivalCubit,
              runSpacing: 15.r,
              spacing: 15.r,
              gridCrossCount: 2,
              gridItemHeight: 220.spMin,
              padding: Dimens.paddingAll15PX,
              itemBuilder: (_, index, item) => BuildProductItem(
                productModel: item,
                onFavRefresh: () => controller.onChangeFav(item),
              ),
              loadingWidget: const BuildLoadingProductsGridView(),
              emptyWidget: const BuildEmptyDataView(),
            ),
          ),
        ],
      ),
    );
  }
}
