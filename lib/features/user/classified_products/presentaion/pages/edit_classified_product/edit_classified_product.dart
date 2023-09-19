part of 'edit_classified_product_imports.dart';

class EditClassifiedProduct extends StatefulWidget {
  final int productId;

  const EditClassifiedProduct({Key? key, required this.productId})
      : super(key: key);

  @override
  State<EditClassifiedProduct> createState() => _EditClassifiedProductState();
}

class _EditClassifiedProductState extends State<EditClassifiedProduct> {
  late EditClassifiedProductController controller;

  @override
  void initState() {
    controller = EditClassifiedProductController(widget.productId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(
        title: 'Edit product',
      ),
      body: BlocBuilder<GenericBloc<CusProduct?>, GenericState<CusProduct?>>(
        bloc: controller.cusProductBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              physics: const BouncingScrollPhysics(),
              padding:Dimens.standardPadding,
              children: [
                BuildEditGeneralFields(
                  controller: controller,
                ),
                BuildPhotosView(
                  controller: controller,
                ),
                BuildVideoView(
                  controller: controller,
                ),
                BuildMetaInputs(
                  controller: controller,
                ),
                BuildEditPrice(
                  controller: controller,
                ),
                BuildDescription(
                  controller: controller,
                ),
                BuildPdf(
                  controller: controller,
                ),
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
