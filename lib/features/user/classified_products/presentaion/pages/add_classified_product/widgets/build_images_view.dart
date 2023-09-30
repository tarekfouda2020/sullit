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
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            tr('images'),
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
                  tr('gallaryImages'),
                  style: AppTextStyle.s14_w800(color: context.colors.black),
                ),
              ),
              BuildGallaryImages(
                controller: controller,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10).r,
                child: Text(
                   tr('thumbnailImage'),
                  style: AppTextStyle.s14_w800(color: context.colors.black),
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
