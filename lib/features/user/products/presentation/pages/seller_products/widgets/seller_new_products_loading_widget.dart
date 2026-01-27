part of 'seller_products_widgets_imports.dart';

class SellerNewProductsLoadingWidget extends StatelessWidget {
  final SellerProductsController controller;

  const SellerNewProductsLoadingWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: controller.isLoadingNextPage,
          builder: (context, state) {
            return Visibility(
                visible: state.data,
                child: const Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 13),
                  child: CircularProgressIndicator.adaptive(),
                )));
          }),
    );
  }
}
