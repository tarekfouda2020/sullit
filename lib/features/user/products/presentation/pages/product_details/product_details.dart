part of 'product_details_imports.dart';

class ProductDetails extends StatefulWidget {
  final int productId;
  final bool isResale;
  final bool isFav;
  final bool fromSellerPage;
  const ProductDetails(
      {super.key,
      required this.productId,
      required this.isResale,
       this.fromSellerPage = false,
      required this.isFav});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  late ProductDetailsController controller;

  @override
  void initState() {
    super.initState();
    print("from seller page === ${widget.fromSellerPage}");
    controller = ProductDetailsController(
        context, widget.productId, widget.isResale, widget.isFav, widget.fromSellerPage);


  }

  @override
  void dispose() {
    controller.scrollController.dispose();
    super.dispose();
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


}
