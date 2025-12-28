part of 'shareholder_offers_imports.dart';

class ShareholderOffers extends StatefulWidget {
  const ShareholderOffers({super.key});

  @override
  State<ShareholderOffers> createState() => _ShareholderOffersState();
}

class _ShareholderOffersState extends State<ShareholderOffers> {

  final ShareholderOffersController controller = ShareholderOffersController();

  @override
  Widget build(BuildContext context) {
    var isShareHolder = context.isShareHolder;
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: Column(
        children: [
          // Padding(
          //   padding: const EdgeInsets.only(left: 15,right: 15,top: 10,bottom: 8),
          //   child: CustomSearchFiledWidget(
          //     txtController: controller.searchFieldCtr,
          //     onPressSearch: () =>controller.onPressSearch(context),
          //     onChange: (value) => controller.whileWriting(value) ,
          //     height: Dimens.dp50,
          //   ),
          // ),
          Expanded(
            child: CustomRefreshIndicatorWidget(
              onRefresh: () async => await controller.getShareholderProducts(1),
              child: GridViewPagination<Product>(
                pagingController: controller.shareholderOffersPagingController,
                onRefresh: () async =>
                    controller.shareholderOffersPagingController.refresh(),
                firstPageProgressIndicatorBuilder: (_) =>
                    const BuildLoadingCatsProducts(),
                showNewPageProgressIndicatorAsGridChild: false,
                noItemsFoundIndicatorBuilder: (context) => const BuildEmptyDataView(),
                itemBuilder: (_, item, index) => BuildProductItem(
                  productModel: item,
                  showVipDiscount:
                      item.hasShareholderDiscount == true && isShareHolder == true,
                  onFavRefresh: () => controller.onChangeFav(item),
                  onRefresh: () => controller.getShareholderProducts(1),
                ),
              ),
            ),
          ),
          Gaps.vGap(120),
        ],
      ),
    );
  }
}
