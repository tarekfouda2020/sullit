part of 'home_main_widgets_imports.dart';

class OnSaleOffersFormWidget extends StatelessWidget {
  final HomeMainController controller;

  const OnSaleOffersFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<Product>>, GenericState<List<Product>>>(
      bloc: controller.onSaleCubit,
      builder: (context, state) {
        int length = state.data.take(4).length;
        if (state is GenericUpdateState) {
          return Visibility(
            visible: state.data.isNotEmpty,
            child: SizedBox(
              height: 300,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BuildHeaderTitle(
                    title: tr('promotions'),
                    controller: controller,
                    onTap: () {
                      controller.changeCouponsTab(2);
                      controller.homeController.animateTabsPages(3, context);
                    },
                  ),
                  Gaps.vGap8,
                  Flexible(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: length,
                      itemBuilder: (context, index) {
                        return BuildProductItem(
                          margin: EdgeInsetsDirectional.only(end: index == length - 1 ? 0 : 8),
                          productModel: state.data[index],
                          onFavRefresh: () => controller.onChangeOnSaleOffersFav(state.data[index]),
                          onRefresh: () => controller.getOnSaleOffers(refresh: true),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          );
        } else {
          return const BuildHomeMainOffersShimmerWidget();
        }
      },
    );
  }
}
