part of 'search_imports.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: "Sahla Price Finder",
        bgColor: context.colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarLocationWidget(),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 16,
              ),
              children: [
                const SearchHeaderWidget(),
                Gaps.vGap24,
                Column(
                  spacing: 12,
                  children: List.generate(
                    2,
                    (index) => const SearchResultItemWidget(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
