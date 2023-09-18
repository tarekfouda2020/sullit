// ignore_for_file: avoid_dynamic_calls

part of 'edit_classified_product_w_imports.dart';

class BuildEditImages extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildEditImages({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<EditGallaryImages>,
        GenericState<EditGallaryImages>>(
      bloc: controller.imagesBloc,
      builder: (context, state) {
        return Visibility(
          visible: state.data.addedImages.isNotEmpty || state.data.images.images.isNotEmpty,
          replacement: InkWell(
            onTap: () => controller.showImageDialog(
              context: context,
              type: FileImageType.multiImage,
              imageType: ImageType.generalImages,
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
                  children: [
                    ...List.generate(
                      state.data.images.images.length,
                          (exitedIndex) => CachedImage(
                        imgMargin: const EdgeInsets.symmetric(
                          horizontal: 5,
                          vertical: 5,
                        ),
                        url: state.data.images.images[exitedIndex],
                        height: 60,
                        borderRadius: BorderRadius.circular(5),
                        width: 60,
                      ),
                    ),
                    ...List.generate(
                      state.data.addedImages.length,
                          (index) => CachedImage(
                            imgMargin: const EdgeInsets.symmetric(
                              horizontal: 5,
                              vertical: 5,
                            ),
                            url: state.data.addedImages[index].url,
                            height: 60,
                            borderRadius: BorderRadius.circular(5),
                            width: 60,
                          ),
                    ),
                  ]
                ),
                InkWell(
                  onTap: () => controller.showImageDialog(
                    context: context,
                    type: FileImageType.multiImage,
                    imageType: ImageType.generalImages,
                    extension: 'image'
                  ),
                  child: Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
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
              ],
            ),
          ),
        );
      },
    );
  }
}
