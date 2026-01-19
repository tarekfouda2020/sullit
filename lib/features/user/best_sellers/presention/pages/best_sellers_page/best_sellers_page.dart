part of 'best_sellers_page_imports.dart';

class BestSellersPage extends StatefulWidget {
  const BestSellersPage({super.key});

  @override
  State<BestSellersPage> createState() => _BestSellersPageState();
}

class _BestSellersPageState extends State<BestSellersPage> {
  final BestSellersPageController controller = BestSellersPageController();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: "Best Sellers",
        actions: [
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(Dimens.dp5),
              child: SvgPicture.asset(
                Res.filterIcon,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SellerSearchFiledWidget(controller: controller),
          Gaps.vGap16,
          Expanded(
            child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: controller.isLoadingCubit,
              builder: (context, loadingState) {
                if (loadingState.data) {
                  return const CircleAvatar();
                }
                return BlocBuilder<GenericBloc<List<Shop>>, GenericState<List<Shop>>>(
                  bloc: controller.shopsCubit,
                  builder: (context, shopsState) {
                    if (shopsState.data.isEmpty) {
                      return const Center(child: Text("لا توجد متاجر متاحة حالياً."));
                    }

                    return ListView.builder(
                      controller: controller.scrollController,
                      itemCount: shopsState.data.length,
                      padding: Dimens.paddingHorizontal20PX,
                      itemBuilder: (context, index) {
                        final shop = shopsState.data[index];
                        return Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: SellerCardWidget(shop: shop,onTap:() => AutoRouter.of(context).push( SellerProductsPageRoute( shopModel: shop,)),
                        ),
                        );
                      },
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}