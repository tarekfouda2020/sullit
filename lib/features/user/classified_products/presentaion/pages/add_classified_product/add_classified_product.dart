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
          BuildGeneralFields(
            controller: controller,
          ),
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
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10).r,
                  child: Text(
                    'Gallery Images',
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                BlocBuilder<GenericBloc<List<FileDomainModel>>,
                    GenericState<List<FileDomainModel>>>(
                  bloc: controller.imagesBloc,
                  builder: (context, state) {
                    return Visibility(
                      visible: state.data.isNotEmpty,
                      replacement: InkWell(
                        onTap: () => controller.showImageDialog(
                         context: context,
                         type: FileImageType.multiImage,
                         imageType:  ImageType.generalImages,
                        ),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: CustomDecoration(),
                          child: Icon(
                            Icons.add,
                            size: 15,
                            color: context.colors.primary,
                          ),
                        ),
                      ),
                      child: SizedBox(
                        height: 60.h,
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: [
                              Wrap(
                                children: List.generate(
                                  state.data.length,
                                  (index) => CachedImage(
                                    imgMargin: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    url: state.data[index].url,
                                    height: 60,
                                    borderRadius: BorderRadius.circular(5),
                                    width: 60,
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () => controller.showImageDialog(
                                   context : context,
                                   type : FileImageType.multiImage,
                                   imageType:  ImageType.generalImages),
                                child: Container(
                                  margin: const EdgeInsets.symmetric(
                                      horizontal: 5, vertical: 5),
                                  height: 60,
                                  width: 60,
                                  decoration: CustomDecoration(),
                                  child: Icon(
                                    Icons.add,
                                    size: 15,
                                    color: context.colors.primary,
                                  ),
                                ),
                              ),
                            ]),
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10).r,
                  child: Text(
                    'Thumbnail Image',
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                BlocBuilder<GenericBloc<FileDomainModel?>,
                    GenericState<FileDomainModel?>>(
                  bloc: controller.thumbnailImageBloc,
                  builder: (context, state) {
                    if (state is GenericUpdateState) {
                      return CachedImage(
                        imgMargin: const EdgeInsets.all(5),
                        url: state.data!.url,
                        height: 60,
                        borderRadius: BorderRadius.circular(5),
                        width: 60,
                      );
                    } else {
                      return InkWell(
                        onTap: () => controller.showImageDialog(
                          context: context,
                          type: FileImageType.singleImage,
                          imageType: ImageType.thumbnail,
                        ),
                        child: Container(
                          height: 60,
                          width: 60,
                          decoration: CustomDecoration(),
                          child: Icon(
                            Icons.add,
                            size: 15,
                            color: context.colors.primary,
                          ),
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
          BuildVideosView(
            controller: controller,
          ),
          BuildMetaTags(controller: controller),
           BuildPrice(controller: controller,),
          BuildDiscription(
            controller: controller,
          ),
          BuildPdf(
            controller: controller,
          ),
          GestureDetector(
            onTap: () => controller.addClassifiedProducts(context),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              padding: const EdgeInsets.symmetric(vertical: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: context.colors.primary),
              child: Text(
                textAlign: TextAlign.center,
                'Save Product',
                style: AppTextStyle.s16_w700(color: context.colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
