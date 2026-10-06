part of 'imports.dart';

class PopularSearchesWidget extends StatelessWidget {
  const PopularSearchesWidget({super.key, required this.controller});

  final PriceFinderController controller;

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
        BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
          bloc: controller.popularLoadingBloc,
          builder: (context, loadingState) {
            if (loadingState.data) return const PopularSearchesShimmerWidget();

            return BlocBuilder<GenericBloc<List<SearchQuery>>, GenericState<List<SearchQuery>>>(
              bloc: controller.popularSearchesBloc,
              builder: (context, state) {
                final items = state.data;
                if (items.isEmpty) return const SizedBox.shrink();
                return Wrap(
                  spacing: 7,
                  runSpacing: 8,
                  children: items.map((item) {
                    return PopularSearchesItemWidget(
                      name: item.query,
                      category: item.categoryName ?? '',
                    );
                  }).toList(),
                );
              },
            );
          },
        ),
      ],
    );
  }
}
