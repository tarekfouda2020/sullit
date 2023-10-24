part of 'add_classified_product_imports.dart';

class AddClassifiedProduct extends StatefulWidget {
  final List<FileDomainModel>? images;
  final FileDomainModel? thumbnailImage;
  final FileDomainModel? metaImage;

  final FileDomainModel? pdf;

  const AddClassifiedProduct(
      {Key? key, this.images, this.thumbnailImage, this.metaImage, this.pdf})
      : super(key: key);

  @override
  State<AddClassifiedProduct> createState() => _AddClassifiedProductState();
}

class _AddClassifiedProductState extends State<AddClassifiedProduct> {
  final AddClassifiedProductsController controller =
      AddClassifiedProductsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('addNewProduct')),
      body: ListView(
          physics: const BouncingScrollPhysics(),
          padding: Dimens.standardPadding,
          children: [
            Form(
              key: controller.formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildGeneralFields(controller: controller),
                  BuildImagesView(controller: controller),
                  BuildVideosView(controller: controller),
                  BuildMetaTags(controller: controller),
                  BuildPrice(controller: controller),
                  BuildDiscription(controller: controller),
                  BuildPdf(controller: controller),
                  BuildSaveProductBtn(controller: controller)
                ],
              ),
            ),
          ]),
    );
  }
}
