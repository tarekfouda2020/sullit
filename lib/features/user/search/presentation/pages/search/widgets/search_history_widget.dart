part of 'search_widgets_imports.dart';

class SearchHistoryWidget extends StatelessWidget {
  final SearchController controller;
  const SearchHistoryWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<String>>, GenericState<List<String>>>(
      bloc: controller.searchHistoryCubit,
      builder: (context, state) {
        return Visibility(
          visible: state.data.isNotEmpty,
          child: Container(
            padding: const EdgeInsets.only(top: 15),
            margin: const EdgeInsets.only(left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: Dimens.borderRadius12PX,
            ),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: MediaQuery.sizeOf(context).height * 0.2,
              ),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  spacing: 10,
                  children: List.generate(
                    state.data.length,
                    (index) {
                      return Visibility(
                        visible: state.data[index].isNotEmpty,
                        child: GestureDetector(
                          onTap: () => controller
                              .selectSearchHistoryItem(state.data[index]),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            spacing: 10,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 12),
                                child: Text(
                                  state.data[index],
                                  style: AppTextStyle.s15_w500(
                                      color: context.colors.black),
                                ),
                              ),
                              Gaps.line(context.colors.customBackground, 1)
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
