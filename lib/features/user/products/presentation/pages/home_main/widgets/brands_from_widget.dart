part of 'home_main_widgets_imports.dart';

class BrandsFromWidget extends StatelessWidget {
  final HomeMainController controller;

  const BrandsFromWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<BrandDomainModel>>, GenericState<List<BrandDomainModel>>>(
      bloc: controller.brandsCubit,
      builder: (context, state) {
        int length = state.data.take(4).length;
        if (state is GenericUpdateState) {
          return Visibility(
            visible: state.data.isNotEmpty,
            child: SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Gaps.vGap16,
                  BuildHeaderTitle(
                    title: tr('brands'),
                    controller: controller,
                    onTap: () => AutoRouter.of(context).push(const BrandsRoute()),
                  ),
                  Gaps.vGap8,
                  Flexible(
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      scrollDirection: Axis.horizontal,
                      itemCount: length,
                      itemBuilder: (context, index) {
                        return BuildBrandItem(
                          margin: EdgeInsetsDirectional.only(end: index == length - 1 ? 0 : 8),
                          height: 84,
                          width: 84,
                          brand: state.data[index],
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
