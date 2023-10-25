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
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(title: tr('addNewProduct')),
        body: Column(
          children: [
            Flexible(
              child: Form(
                autovalidateMode: AutovalidateMode.disabled,
                key: controller.formKey,
                child: SingleChildScrollView(
                  padding: Dimens.paddingAll15PX,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      BuildGeneralFields(controller: controller),
                      BuildImagesView(controller: controller),
                      BuildVideosView(controller: controller),
                      BuildMetaTags(controller: controller),
                      BuildPrice(controller: controller),
                      BuildDescription(controller: controller),
                      BuildPdf(controller: controller),
                    ],
                  ),
                ),
              ),
            ),
            BuildSaveProductBtn(controller: controller)
          ],
        ),
      ),
    );
  }
}
