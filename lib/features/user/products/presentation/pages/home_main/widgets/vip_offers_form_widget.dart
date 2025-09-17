part of 'home_main_widgets_imports.dart';

class VipOffersFormWidget extends StatelessWidget {
  final HomeMainController controller;

  const VipOffersFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<Product>>, GenericState<List<Product>>>(
      bloc: controller.vipOffersCubit,
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
                  Gaps.vGap19,
                  BuildHeaderTitle(title: tr('vipOffers'),controller: controller),
                  Gaps.vGap8,
                  Flexible(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: length,
                      itemBuilder: (context, index) {
                        return BuildProductItem(
                          margin: EdgeInsetsDirectional.only(end: index == length - 1 ? 0 : 8),
                          productModel: state.data[index],
                          onFavRefresh: () => controller.onChangeVipOffersFav(state.data[index]),
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
