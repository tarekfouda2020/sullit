part of 'edit_classified_product_w_imports.dart';

class BuildEditThumbnailImage extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildEditThumbnailImage({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<FileDomainModel?>,
        GenericState<FileDomainModel?>>(
      bloc: controller.thumbnailImageBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return GestureDetector(
            onTap: () => controller.showImageDialog(
              context: context,
              type: FileImageType.singleImage,
              imageType: ImageType.thumbnail,
              extension: TypeExtension.image.name,
            ),
            child: CachedImage(
              imgMargin: Dimens.paddingAll5PX,
              url: state.data!.url,
              height: Dimens.dp80.r,
              width: Dimens.dp80.r,
              borderRadius: Dimens.borderRadius5PX,
              alignment: Alignment.topLeft,
              borderColor: context.colors.greyWhite,
              child: InkWell(
                onTap: () =>
                    controller.thumbnailImageBloc.onUpdateToInitState(null),
                child: Icon(
                  Icons.clear,
                  color: context.colors.primary,
                  size: Dimens.dp20.r,
                ),
              ),
            ),
          );
        } else {
          return InkWell(
            onTap: () => controller.showImageDialog(
              context: context,
              type: FileImageType.singleImage,
              imageType: ImageType.thumbnail,
              extension: TypeExtension.image.name,
            ),
            child: Container(
              height: Dimens.dp70.r,
              width: Dimens.dp70.r,
              decoration: CustomDecoration(),
              child: Icon(
                Icons.add,
                size: Dimens.dp20.sp,
                color: context.colors.primary,
              ),
            ),
          );
        }
      },
    );
  }
}
