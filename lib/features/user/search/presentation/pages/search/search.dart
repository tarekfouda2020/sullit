part of 'search_imports.dart';

class Search extends StatefulWidget {
  final String searchText;

  const Search({super.key, required this.searchText});

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  late SearchController controller;

  @override
  void initState() {
    controller = SearchController(widget.searchText);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: const BuildCustomAppBar(),
        body: Column(
          children: [
            BuildSearchField(controller: controller),
            Flexible(
              child: BlocBuilder<GenericBloc<SearchResults?>,
                  GenericState<SearchResults?>>(
                bloc: controller.resultsCubit,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return ListView(
                      children: [
                        BuildCategorySuggestItem(
                          categories: state.data!.categories,
                          // controller: controller,
                        ),
                        BuildProductSuggestions(
                          products: state.data!.products,
                        ),
                      ],
                    );
                  } else {
                    return const BuildLoadingSuggestions();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
