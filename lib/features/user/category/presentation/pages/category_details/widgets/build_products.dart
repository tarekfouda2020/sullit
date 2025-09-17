part of 'category_details_widgets_imports.dart';

class BuildProducts extends StatelessWidget {
  final CategoryDetailsController detailsController;

  const BuildProducts({super.key, required this.detailsController});

  @override
  Widget build(BuildContext context) {
    bool? haveVipDiscount = context.read<UserCubit>().state.model?.hasValidSubscription;
    return Flexible(
      child: CustomRefreshIndicatorWidget(
        onRefresh: () => detailsController.getPopularProducts(1),
        child: PagedGridView<int, Product>(
          padding: Dimens.standardPadding,
          // padding: Dimens.paddingHorizontal15PX,
          pagingController: detailsController.pagingController,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 15.r,
            mainAxisSpacing: 15.r,
            crossAxisCount: 2,
            childAspectRatio: .71,
          ),
          showNewPageProgressIndicatorAsGridChild: false,
          showNewPageErrorIndicatorAsGridChild: true,
          builderDelegate: PagedChildBuilderDelegate<Product>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildLoadingCatsProducts(),
            itemBuilder: (_, item, index) => BuildProductItem(
              productModel: item,
              onFavRefresh: () => detailsController.onFavChanged(item),
              showVipDiscount: haveVipDiscount,
              onRefresh: () => detailsController.getPopularProducts(1),
            ),
            noItemsFoundIndicatorBuilder: (cxt) => const BuildEmptyDataView(),
          ),
        ),
      ),
    );
  }
}
