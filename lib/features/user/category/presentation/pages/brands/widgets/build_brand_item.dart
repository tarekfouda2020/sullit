part of 'brands_widgets_imports.dart';

class BuildBrandItem extends StatelessWidget {
  final BrandDomainModel brand;

  const BuildBrandItem({Key? key, required this.brand}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(
        BrandDetailsRoute(brandId: brand.id),
      ),
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration:  const CustomDecoration(
          boxShape: BoxShape.circle,
          myBoxShadow: []
        ),
        child: CachedImage(
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
