part of 'customers_products_w_imports.dart';

class BuildCustomerProducts extends StatelessWidget {
  final CustomerProductsController controller;

  const BuildCustomerProducts({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: RefreshIndicator(
        onRefresh: () => controller.getCustomerProducts(1),
        child: PagedGridView<int, CustomerProduct>(
          padding: Dimens.standardPadding,
          pagingController: controller.pagingController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: .9,
          ),
          showNewPageProgressIndicatorAsGridChild: false,
          showNewPageErrorIndicatorAsGridChild: true,
          builderDelegate: PagedChildBuilderDelegate<CustomerProduct>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildLoadingCustomerProducts(),
            itemBuilder: (_, item, index) =>
                BuildCustomerProductItem(productModel: item),
            noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
          ),
        ),
      ),
    );
  }
}
