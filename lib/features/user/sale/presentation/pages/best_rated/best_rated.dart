part of 'best_rated_imports.dart';

class BestRated extends StatefulWidget {
  const BestRated({Key? key}) : super(key: key);

  @override
  State<BestRated> createState() => _BestRatedState();
}

class _BestRatedState extends State<BestRated> {
  late BestRatedController controller;

  @override
  void initState() {
    controller = BestRatedController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: Padding(
        padding: const EdgeInsets.only(bottom: 122),
        child: GenericListView(
          type: ListViewType.gridApi,
          onRefresh: controller.getBestRated,
          cubit: controller.bestRatedCubit,
          runSpacing: 15.r,
          spacing: 15.r,
          gridCrossCount: 2,
          gridItemHeight: 220.spMin,
          padding: Dimens.paddingAll15PX,
          itemBuilder: (_, index, item) => BuildProductItem(
            productModel: item,
            onFavRefresh: () => controller.onChangeFav(item),
            onRefresh: () => controller.getBestRated(refresh: true),
          ),
          loadingWidget: const BuildLoadingProductsGridView(),
          emptyWidget: const BuildEmptyDataView(),
        ),
      ),
    );
  }
}
