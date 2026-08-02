part of 'home_main_widgets_imports.dart';

class BuildTopSellers extends StatelessWidget {
  final List<ShopCardDomainModel> topSellers;

  const BuildTopSellers({super.key, required this.topSellers});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: topSellers.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr("top_Seller"),
            style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
          Gaps.vGap8,
          SizedBox(
            height: 140,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: topSellers.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: () => AutoRouter.of(context).push(
                        SellerProductsPageRoute(
                            shopId: topSellers[index].id)),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(end: 5),
                      child: BuildTopSellersItem(topSellers: topSellers[index]),
                    ));
              },
            ),
          ),
        ],
      ),
    );
  }
}
