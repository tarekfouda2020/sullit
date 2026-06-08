part of 'product_details_imports.dart';

class ProductDetails extends StatefulWidget {
  final int productId;
  final bool isResale;
  final bool isFav;

  const ProductDetails(
      {super.key,
      required this.productId,
      required this.isResale,
      required this.isFav});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late ProductDetailsController controller;

  @override
  void initState() {
    controller = ProductDetailsController(
        context, widget.productId, widget.isResale, widget.isFav);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: BlocBuilder<GenericBloc<ProductDetailsDomainModel?>,
          GenericState<ProductDetailsDomainModel?>>(
        bloc: controller.detailsCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                BuildDetailsView(
                  controller: controller,
                  detailsModel: state.data!,
                ),
                BuildProductButtons(
                  controller: controller,
                  detailsModel: state.data!,
                ),
              ],
            );
          } else {
            return const BuildLoadingDetails();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    controller.scrollController.dispose();
    super.dispose();
  }
}
