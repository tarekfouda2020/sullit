part of 'home_main_widgets_imports.dart';

class BestRatedOffersFormWidget extends StatelessWidget {
  final HomeMainController controller;

  const BestRatedOffersFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<Product>>, GenericState<List<Product>>>(
      bloc: controller.bestRatedCubit,
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
                    title: tr('bestRated'),
                    controller: controller,
                    onTap: () {
                      controller.changeCouponsTab(3);
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
                          onFavRefresh: () => controller.onChangeBestRatedFav(state.data[index]),
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
