part of 'add_classified_product_w_imports.dart';
class BuildThumbnailImage extends StatelessWidget {
  final AddClassifiedProductsController controller ;
  const BuildThumbnailImage({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<FileDomainModel?>,
        GenericState<FileDomainModel?>>(
      bloc: controller.thumbnailImageBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return CachedImage(
            imgMargin: Dimens.paddingAll5PX,
            url: state.data!.url,
            borderRadius: Dimens.borderRadius5PX,
            height: Dimens.dp80.r,
            width: Dimens.dp80.r,
            alignment: Alignment.topLeft,
            child: InkWell(
              onTap: () =>
                  controller.thumbnailImageBloc.onUpdateToInitState(null),
              child: Icon(
                Icons.clear,
                color: context.colors.primary,
                size: Dimens.dp20.r,
              ),
            ),
          );
        } else {
          return InkWell(
            onTap: () => controller.showImageDialog(
              context: context,
              type: FileImageType.singleImage,
              imageType: ImageType.thumbnail,
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
