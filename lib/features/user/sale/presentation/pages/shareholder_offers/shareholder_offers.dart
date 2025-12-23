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
      body: Padding(
        padding: const EdgeInsets.only(bottom: 122),
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
    );
  }
}
