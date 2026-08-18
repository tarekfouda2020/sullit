part of 'home_main_widgets_imports.dart';

class NewArrivalOffersFormWidget extends StatelessWidget {
  final HomeMainController controller;

  const NewArrivalOffersFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ProductCard>>, GenericState<List<ProductCard>>>(
      bloc: controller.arrivalCubit,
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
                    title: tr('newArrival'),
                    onTap: () {
                      controller.changeCouponsTab(
                          SaleTabType.newArrival, context);
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
                          margin: EdgeInsetsDirectional.only(
                              end: index == length - 1 ? 0 : 8),
                          productModel: state.data[index],
                          onFavRefresh: () => controller
                              .onChangeArrivalOffersFav(state.data[index]),
                          onRefresh: () =>
                              controller.getNewArrivalOffers(refresh: true),
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
