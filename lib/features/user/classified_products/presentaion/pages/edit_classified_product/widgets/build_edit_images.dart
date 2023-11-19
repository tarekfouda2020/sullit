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
          visible: state.data.addedImages.isNotEmpty ||
              state.data.images.images.isNotEmpty,
          replacement: InkWell(
            onTap: () => controller.showImageDialog(
              context: context,
              type: FileImageType.multiImage,
              imageType: ImageType.generalImages,
              extension: TypeExtension.image.name,
            ),
            child: Container(
              height: Dimens.dp70.r,
              width: Dimens.dp70.r,
              decoration: CustomDecoration().copyWith(
                border: Border.all(color: context.colors.greyWhite),
              ),
              child: Icon(
                Icons.add,
                size: Dimens.dp20.sp,
                color: context.colors.primary,
              ),
            ),
          ),
          child: SizedBox(
            height: Dimens.dp70.h,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Wrap(
                  children: [
                    ...List.generate(
                      state.data.images.images.length,
                      (exitedIndex) => CachedImage(
                        imgMargin: Dimens.paddingAll5PX,
                        url: state.data.images.images[exitedIndex],
                        borderRadius: Dimens.borderRadius5PX,
                        height: Dimens.dp80.r,
                        width: Dimens.dp80.r,
                      ),
                    ),
                    ...List.generate(
                      state.data.addedImages.length,
                      (index) => CachedImage(
                        imgMargin: Dimens.paddingAll5PX,
                        url: state.data.addedImages[index].url,
                        height: Dimens.dp80.r,
                        width: Dimens.dp80.r,
                        borderRadius: Dimens.borderRadius5PX,
                        alignment: Alignment.topLeft,
                        child: InkWell(
                          onTap: () => controller.removeExistedImages(index),
                          child: Icon(
                            Icons.clear,
                            color: context.colors.primary,
                            size: Dimens.dp20.r,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => controller.showImageDialog(
                    context: context,
                    type: FileImageType.multiImage,
                    imageType: ImageType.generalImages,
                    extension: TypeExtension.image.name,
                  ),
                  child: Container(
                    height: Dimens.dp70.r,
                    width: Dimens.dp70.r,
                    decoration: CustomDecoration().copyWith(
                      border: Border.all(color: context.colors.greyWhite),
                    ),
                    child: Icon(
                      Icons.add,
                      size: Dimens.dp20.sp,
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
