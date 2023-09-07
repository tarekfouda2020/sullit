part of 'add_classified_product_imports.dart';

class AddClassifiedProduct extends StatefulWidget {
  const AddClassifiedProduct({Key? key}) : super(key: key);

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
      appBar: const DefaultAppBar(
        title: 'Add New Product',
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "General",
              style: AppTextStyle.s16_w700(
                color: context.colors.black,
              ),
            ),
          ),
          const BuildGeneralFields(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Images",
              style: AppTextStyle.s16_w700(
                color: context.colors.black,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            decoration: CustomDecoration(),
            alignment: AlignmentDirectional.centerStart,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildGallaryImages(controller: controller),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10).r,
                  child: Text(
                    'Thumbnail Image',
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                BuildCustomGetImage(
                  controller: controller,
                  type: ImageType.thumbnail,
                ),
              ],
            ),
          ),
          const BuildVideosView(),
          BuildMetaTags(controller: controller),
          const BuildPrice(),
          const BuildDiscription(),
          BuildPdf(controller: controller,),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 20),
            padding: const EdgeInsets.symmetric(
              vertical: 15
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: context.colors.primary
            ),
            child: Text(
              textAlign: TextAlign.center,
              'Save Product',
              style: AppTextStyle.s16_w700(color: context.colors.white),
            ),
          )
        ],
      ),
    );
  }
}
