part of 'customer_product_details_imports.dart';

class CustomerProductDetails extends StatefulWidget {
  final int id;

  const CustomerProductDetails({super.key, required this.id});

  @override
  _CustomerProductDetailsState createState() => _CustomerProductDetailsState();
}

class _CustomerProductDetailsState extends State<CustomerProductDetails> {
  late CustomerProductDetailsController controller;

  @override
  void initState() {
    controller = CustomerProductDetailsController(widget.id);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Details"),
      backgroundColor: context.colors.customBackground,
      body: BlocBuilder<GenericBloc<CustomersProductDetails?>,
          GenericState<CustomersProductDetails?>>(
        bloc: controller.productDetails,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              padding: Dimens.standardPadding,
              children: [
                BuildDetailsSwiper(detailsModel: state.data!.customerProduct),
                BuildDetailsInfo(detailsModel: state.data!.customerProduct),
                BuildDetailsDescription(
                  detailsModel: state.data!.customerProduct,
                ),
                BuildDetailsDownloads(
                  detailsModel: state.data!.customerProduct,
                ),
                BuildDetailsVideo(
                  detailsModel: state.data!.customerProduct,
                  controller: controller,
                ),
                BuildOtherProducts(otherProducts: state.data!.relatedProducts),
              ],
            );
          } else {
            return const BuildLoadingCustomerDetails();
          }
        },
      ),
    );
  }
}
