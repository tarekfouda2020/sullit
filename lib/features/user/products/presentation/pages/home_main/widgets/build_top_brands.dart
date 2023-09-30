part of 'home_main_widgets_imports.dart';

class BuildTopBrands extends StatelessWidget {
  final List<BrandDomainModel> brandList;

  const BuildTopBrands({super.key, required this.brandList});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap5,
        BuildCustomHeaderTitle(
          title: tr('top10Products'),
          btnText: tr('viewAllBrands'),
          onTap: () => AutoRouter.of(context).push(const BrandsRoute()),
        ),
        Gaps.vGap5,
        ...List.generate(
          brandList.length,
          (index) => BuildTopBrandItem(brandModel: brandList[index]),
        )
      ],
    );
  }
}
