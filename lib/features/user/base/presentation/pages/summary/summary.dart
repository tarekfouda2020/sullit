part of 'summary_imports.dart';

class Summary extends StatefulWidget {
  final HomeController homeController;

  const Summary({super.key, required this.homeController});

  @override
  State<Summary> createState() => _SummaryState();
}

class _SummaryState extends State<Summary> {
  late SummaryController controller;

  @override
  void initState() {
    controller = SummaryController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: context.colors.customBackground,
          appBar: BuildHomeAppBar(homeController: widget.homeController),
          body: Column(
            children: const [
              BuildSummaryTabs(),
              Flexible(
                child: TabBarView(
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    Following(),
                    Explore(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
