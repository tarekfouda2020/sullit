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
                    List<Category> categories = state.data!.categories;
                    List<Category> cats = categories.length > 10
                        ? categories.take(10).toList()
                        : categories;

                    List<Product> products = state.data!.products;
                    List<Product> prod = products.length > 10
                        ? products.take(10).toList()
                        : products;

                    return ListView(
                      children: [

                        BuildCategorySuggestItem(
                          categories: cats,
                          controller: controller,
                          showSeeAll: categories.length>10,
                          // controller: controller,
                        ),

                        BuildProductSuggestions(
                          products: prod,
                          controller: controller,
                          showSeeAll: products.length > 10,
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
