part of 'search_price_result_imports.dart';

class SearchPriceResult extends StatefulWidget {
  final String? searchKey;

  const SearchPriceResult({super.key, this.searchKey});

  @override
  State<SearchPriceResult> createState() => _SearchPriceResultState();
}

class _SearchPriceResultState extends State<SearchPriceResult> {
  late final SearchPriceController controller;

  @override
  void initState() {
    super.initState();
    controller = SearchPriceController(widget.searchKey);
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr("sahlaPriceFinder"),
        bgColor: context.colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(20, 20, 20, 30),
              child: Column(
                children: [
                  SearchHeaderWidget(controller: controller),
                  Expanded(
                    child: SearchResultsListWidget(controller: controller),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: ResumeComparisonButtonWidget(controller: controller),
    );
  }
}
