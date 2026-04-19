part of 'widgets_imports.dart';

class PharmacyNewProductsLoadingWidget extends StatelessWidget {
  final PharmacyDetailsController controller;

  const PharmacyNewProductsLoadingWidget({super.key, required this.controller});

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
