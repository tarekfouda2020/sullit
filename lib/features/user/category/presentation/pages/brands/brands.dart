part of 'brands_imports.dart';

class Brands extends StatefulWidget {
  const Brands({Key? key}) : super(key: key);

  @override
  State<Brands> createState() => _BrandsState();
}

class _BrandsState extends State<Brands> {
  late BrandsController controller;

  @override
  void initState() {
    controller = BrandsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar:  DefaultAppBar(title: tr('allBrands'), showBack: true),
      body: Column(
        children: [
          Padding(
            padding: Dimens.paddingAll15PX,
            child: BrandSearchWidget(controller: controller),
          ),
          Expanded(child: PagedGridView<int, BrandDomainModel>(
            padding: Dimens.paddingAll15PX,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 15.r,
              mainAxisSpacing: 15.r,
              childAspectRatio: 10 / 9,
            ),
            showNewPageProgressIndicatorAsGridChild: false,
            showNewPageErrorIndicatorAsGridChild: true,
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<BrandDomainModel>(
              firstPageProgressIndicatorBuilder: (context) {
                return const BuildBrandShimmer();
              },
              itemBuilder: (context, item, index) {
                return BuildBrandItem(brand: item);
              },
              noItemsFoundIndicatorBuilder: (cxt) {
                return Center(
                  child: Text(
                    tr('noBrandsHere'),
                    style: AppTextStyle.s12_w400(
                      color: context.colors.black,
                    ),
                  ),
                );
              },
            ),
          ))
        ],
      ),
    );
  }
}
