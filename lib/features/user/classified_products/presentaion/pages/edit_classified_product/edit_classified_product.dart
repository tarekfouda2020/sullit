part of 'edit_classified_product_imports.dart';

class EditClassifiedProduct extends StatefulWidget {
  final CusProduct productModel;

  const EditClassifiedProduct({Key? key, required this.productModel})
      : super(key: key);

  @override
  State<EditClassifiedProduct> createState() => _EditClassifiedProductState();
}

class _EditClassifiedProductState extends State<EditClassifiedProduct> {
  late EditClassifiedProductController controller;

  @override
  void initState() {
    controller = EditClassifiedProductController(widget.productModel);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('editProduct')),
      body: BlocBuilder<GenericBloc<CusProduct?>, GenericState<CusProduct?>>(
        bloc: controller.cusProductBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                BuildEditForm(controller: controller),
                BuildUpdateProduct(controller: controller),
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
