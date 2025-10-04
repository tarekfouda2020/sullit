part of 'on_sale_imports.dart';

class OnSale extends StatefulWidget {
  final HomeController homeController;

  const OnSale({super.key, required this.homeController});

  @override
  State<OnSale> createState() => _OnSaleState();
}

class _OnSaleState extends State<OnSale> {
  late OnSaleController controller;

  @override
  void initState() {
    controller = OnSaleController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      // appBar: BuildHomeAppBar(homeController: widget.homeController),
      body:
          BlocBuilder<GenericBloc<List<Product>>, GenericState<List<Product>>>(
        bloc: controller.onSaleCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            if (state.data.isNotEmpty) {
              return GenericListView<Product>(
                 type: ListViewType.gridApi,
                 onRefresh: controller.getOnSale,
                 cubit: controller.onSaleCubit,
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
                     onFavRefresh: () => controller.onChangeFav(state.data[index]),
                     onRefresh: () => controller.getOnSale(refresh: true),
                   );
                 },
                 loadingWidget: const BuildLoadingProductsGridView(),
                 emptyWidget: const BuildEmptyDataView(),
               );
            } else {
              return const BuildEmptyDataView();
            }
          } else {
            return const BuildLoadingProductsGridView();
          }
        },
      ),
    );
  }
}
