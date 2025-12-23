part of 'new_arrival_imports.dart';

class NewArrival extends StatefulWidget {
  const NewArrival({Key? key}) : super(key: key);

  @override
  State<NewArrival> createState() => _NewArrivalState();
}

class _NewArrivalState extends State<NewArrival> {
  late NewArrivalController controller;

  @override
  void initState() {
    controller = NewArrivalController();
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
            onRefresh: () => controller.getArrival(refresh: true),
          ),
          loadingWidget: const BuildLoadingProductsGridView(),
          emptyWidget: const BuildEmptyDataView(),
        ),
      ),
    );
  }
}
