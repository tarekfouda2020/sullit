part of 'customers_products_w_imports.dart';

class BuildLoadingCustomerProducts extends StatelessWidget {
  const BuildLoadingCustomerProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GenericListView(
        type: ListViewType.grid,
        runSpacing: 15.r,
        spacing: 15.r,
        gridCrossCount: 2,
        gridItemHeight: 200.spMin,
        // padding: Dimens.paddingHorizontal15PX,
        children: List.generate(
          5,
          (index) => const BuildLoadingProductItem(),
        ),
      ),
    );
  }
}
