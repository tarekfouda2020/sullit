part of 'add_classified_product_w_imports.dart';

class BuildImagesView extends StatelessWidget {
  final AddClassifiedProductsController controller;

  const BuildImagesView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dimens.paddingVertical10PX,
          child: Text(
            tr('images'),
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
        ),
        Container(
          padding: Dimens.paddingAll15PX,
          decoration: CustomDecoration(),
          alignment: AlignmentDirectional.centerStart,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: Dimens.paddingVertical5PX,
                child: Text(
                  tr('gallaryImages'),
                  style: AppTextStyle.s15_w700(color: context.colors.black),
                ),
              ),
              BuildGalleryImages(controller: controller),
              Gaps.vGap15,
              Padding(
                padding: Dimens.paddingVertical5PX,
                child: Text(
                  tr('thumbnailImage'),
                  style: AppTextStyle.s15_w700(color: context.colors.black),
                ),
              ),
              BuildThumbnailImage(controller: controller)
            ],
          ),
        ),
      ],
    );
  }
}
