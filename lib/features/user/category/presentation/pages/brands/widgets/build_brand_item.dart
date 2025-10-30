part of 'brands_widgets_imports.dart';

class BuildBrandItem extends StatelessWidget {
  final BrandDomainModel brand;
  final double? height;
  final double? width;
  final EdgeInsetsDirectional? margin;

  const BuildBrandItem({Key? key, required this.brand, this.height, this.width, this.margin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(
        BrandDetailsRoute(brandId: brand.id, brandName: brand.name),
      ),
      child: Container(
        margin: margin ?? EdgeInsets.zero,
        padding: const EdgeInsets.all(4),
        decoration: const CustomDecoration(boxShape: BoxShape.circle, myBoxShadow: []),
        child: CachedImage(
          height: height,
          width: width,
          fit: BoxFit.contain,
          haveRadius: false,
          borderColor: Colors.transparent,
          boxShape: BoxShape.circle,
          url: brand.logo,
        ),
      ),
    );
  }
}
