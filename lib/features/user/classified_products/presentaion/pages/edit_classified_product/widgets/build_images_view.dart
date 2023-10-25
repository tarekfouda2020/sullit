part of 'edit_classified_product_w_imports.dart';

class BuildPhotosView extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildPhotosView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: Dimens.paddingVertical10PX,
          child: Text(
            tr('images'),
            style: AppTextStyle.s15_w700(color: context.colors.black),
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
                  style: AppTextStyle.s15_w700(
                    color: context.colors.black,
                  ),
                ),
              ),
              BuildEditImages(controller: controller),
              Gaps.vGap15,
              Padding(
                padding: Dimens.paddingVertical5PX,
                child: Text(
                  tr('thumbnailImage'),
                  style: AppTextStyle.s15_w700(color: context.colors.black),
                ),
              ),
              BuildEditThumbnailImage(controller: controller),
            ],
          ),
        ),
      ],
    );
  }
}
