part of 'downloads_widgets_imports.dart';

class BuildDownloadsItem extends StatelessWidget {
  final ProductCard productModel;
  final DownloadsController controller;
  const BuildDownloadsItem(
      {super.key, required this.productModel, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      decoration: CustomDecoration(),
      child: ListTile(
        title: Row(
          children: [
            Text(
              "${tr('product')} : ",
              style: AppTextStyle.s13_w500(color: context.colors.black),
            ),
            Text(
              productModel.name,
              style: AppTextStyle.s12_w400(color: context.colors.blackOpacity),
            ),
          ],
        ),
        trailing: BuildOptionItem(
          onTap: () => controller.downloadDigitalProduct(productModel.id ?? 0),
          iconData: Icons.download,
          customColor: context.colors.blue,
        ),
        minLeadingWidth: 10.w,
      ),
    );
  }
}
