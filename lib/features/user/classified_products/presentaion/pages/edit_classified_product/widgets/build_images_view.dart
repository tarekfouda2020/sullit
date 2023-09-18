part of 'edit_classified_product_w_imports.dart';

class BuildPhotosView extends StatelessWidget {
  final EditClassifiedProductController controller ;
  const BuildPhotosView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Text(
            "Images",
            style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
        ),
        Container(
          padding:
          const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          decoration: CustomDecoration(),
          alignment: AlignmentDirectional.centerStart,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Gallery Images',
                    style: AppTextStyle.s14_w800(
                      color: context.colors.black,
                    ),
                  ),
                  Gaps.vGap10,
                ],
              ),
              BuildEditImages(
                controller: controller,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10).r,
                child: Text(
                  'Thumbnail Image',
                  style:
                  AppTextStyle.s14_w800(color: context.colors.black),
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
