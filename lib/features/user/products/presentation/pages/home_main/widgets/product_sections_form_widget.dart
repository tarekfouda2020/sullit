part of 'home_main_widgets_imports.dart';

class ProductSectionsFormWidget extends StatelessWidget {
  final HomeMainController controller;

  const ProductSectionsFormWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<ProductSections>>, GenericState<List<ProductSections>>>(
      bloc: controller.sectionsCubit,
      builder: (context, state) {
        return Column(
          children: List.generate(
            state.data.length,
            (index) => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildHeaderTitle(
                  title: state.data[index].name,
                  controller: controller,
                  onTap: () {},
                ),
                SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Gaps.hGap10,
                      ...List.generate(
                        state.data[index].products.length,
                        (position) {
                          return Padding(
                            padding: Dimens.paddingHorizontal5PX,
                            child: BuildProductItem(
                              productModel: state.data[index].products[position],
                              onFavRefresh: () => controller.onChangeFav(
                                state.data[index].products[position],
                              ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
