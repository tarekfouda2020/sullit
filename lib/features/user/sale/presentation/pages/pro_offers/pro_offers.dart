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
            // Padding(
            //   padding: const EdgeInsets.only(left: 15,right: 15,bottom: 8),
            //   child: CustomSearchFiledWidget(
            //     txtController: controller.searchFieldCtr,
            //     onPressSearch: () =>controller.onPressSearch(context),
            //     onChange: (value) => controller.whileWriting(value) ,
            //     height: Dimens.dp50,
            //   ),
            // ),
            // Gaps.vGap10,
            VipOffersWidget(
              onTap: () => controller.routeToMembershipSubscribe(context),
              buttonText: tr("subscribeNow"),
            ),
            Gaps.vGap10,
            Expanded(
              child: GridViewPagination<Product>(
                pagingController: controller.vipOffersPagingController,
                padding: EdgeInsets.only(
                    left: 15,
                    right: 15,
                    top: 10,
                    bottom: MediaQuery.paddingOf(context).bottom + 30),
                onRefresh: () async =>
                    controller.vipOffersPagingController.refresh(),
                firstPageProgressIndicatorBuilder: (_) =>
                    const BuildLoadingProductsGridView(),
                showNewPageProgressIndicatorAsGridChild: false,
                noItemsFoundIndicatorBuilder: (context) =>
                    const BuildEmptyDataView(),
                itemBuilder: (_, item, index) => BuildProductItem(
                  productModel: item,
                  showVipDiscount: item.hasVipOffer,
                  onFavRefresh: () => controller.onChangeFav(item),
                  onRefresh: () => controller.getVipOffers(1),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
