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
              return Padding(
                padding: Dimens.paddingAll20PX,
                child: GridView.builder(
                  // padding: Dimens.paddingHorizontal20PX,
                  itemCount: state.data.length,
                  gridDelegate: GridFixedHeightDelegate(
                    crossAxisCount: 2,
                    mainAxisSpacing: 15.r,
                    crossAxisSpacing: 15.r,
                    height: 220.spMin,
                  ),
                  itemBuilder: (_, index) {
                    return BuildProductItem(
                      productModel: state.data[index],
                      onFavRefresh: () =>
                          controller.onChangeFav(state.data[index]),
                    );
                  },
                ),
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
