part of 'edit_classified_product_w_imports.dart';

class BuildEditThumbnailImage extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildEditThumbnailImage({
    Key? key,
    required this.controller,
  }) : super(key: key);

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
            ),
            child: CachedImage(
              imgMargin: const EdgeInsets.all(5),
              url: state.data!.url,
              height: 60,
              borderRadius: BorderRadius.circular(5),
              width: 60,
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
    );
  }
}
