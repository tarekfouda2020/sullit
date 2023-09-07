part of 'add_classified_product_w_imports.dart';

class BuildPdf extends StatelessWidget {
  final AddClassifiedProductsController  controller ;
  const BuildPdf({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Text(
          'PDF Specification',
          style: AppTextStyle.s16_w700(
            color: context.colors.black,
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        decoration: CustomDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20, top: 10),
              child: Text(
                'PDF',
                style: AppTextStyle.s14_w800(
                  color: context.colors.black,
                ),
              ),
            ),
            BuildCustomGetImage(
                controller: controller, type: ImageType.meta)
          ],
        ),
      ),
    ],);
  }
}
