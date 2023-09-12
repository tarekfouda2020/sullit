part of 'sale_details_imports.dart';

class SaleDetails extends StatefulWidget {
  final int dealId;

  const SaleDetails({super.key, required this.dealId});

  @override
  State<SaleDetails> createState() => _SaleDetailsState();
}

class _SaleDetailsState extends State<SaleDetails> {
  late SaleDetailsController controller;

  @override
  void initState() {
    controller = SaleDetailsController(widget.dealId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Flash Sale"),
      body: BlocBuilder<GenericBloc<SaleDetailsDomainModel?>,
          GenericState<SaleDetailsDomainModel?>>(
        bloc: controller.saleDetailsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                BuildTimer(time: state.data!.date),
                Expanded(
                  child: GridView.builder(
                    padding: Dimens.standardPadding,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 5.r,
                      mainAxisSpacing: 15.r,
                      childAspectRatio: 8 / 9,
                    ),
                    itemCount: state.data!.products.length,
                    itemBuilder: (context, index) => BuildProductItem(
                      productModel: state.data!.products[index],
                      onFavRefresh: () =>
                          controller.onFavChanged(state.data!.products[index]),
                      onCompareRefresh: () {
                        state.data!.products[index].isAddedTCompare =
                            !state.data!.products[index].isAddedTCompare!;
                      },
                    ),
                  ),
                ),
              ],
            );
          } else {
            return const BuildFlashSaleLoadingView();
          }
        },
      ),
    );
  }
}
