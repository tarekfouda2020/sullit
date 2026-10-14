part of 'imports.dart';

class PopularSearchesWidget extends StatelessWidget {

  final PriceFinderController controller;

  const PopularSearchesWidget({super.key, required this.controller});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr('popularSearches'),
          style: AppTextStyle.s16_w700(color: context.colors.black),
        ),
        Gaps.vGap12,
        BlocBuilder<GenericBloc<List<SearchQuery>>, GenericState<List<SearchQuery>>>(
          bloc: controller.popularSearchesBloc,
          builder: (context, state) {
            if(state is GenericUpdateState){
              if (state.data.isEmpty) return Gaps.empty;
              return Wrap(
                spacing: 7,
                runSpacing: 8,
                children: List.generate(state.data.length, (index) {
                  SearchQuery item = state.data[index];
                  return GestureDetector(
                    onTap: () => controller.onPopularTap(context, item),
                    child: PopularSearchesItemWidget(
                      name: item.query,
                      category: item.categoryName ?? '',
                    ),
                  );
                },),
              );
            }else{
              return  const PopularSearchesShimmerWidget();
            }
          },
        ),
      ],
    );
  }
}
