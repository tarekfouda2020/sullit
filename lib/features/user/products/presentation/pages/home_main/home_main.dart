part of 'home_main_imports.dart';

class HomeMain extends StatefulWidget {
  final HomeController homeController;

  const HomeMain({Key? key, required this.homeController}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  late HomeMainController controller;
  List<int> data = List.generate(10, (index) => index); // Initial data
  // ScrollController scrollController = ScrollController();

  @override
  void initState() {
    controller = HomeMainController(context, widget.homeController);
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: MyScaffold(
          body: Column(
            children: [
              BuildHomeMainAppBar(controller: widget.homeController),
              // Flexible(
              //   child: SizedBox(
              //     height: 100,
              //     child: BlocBuilder<GenericBloc<List<ProductSections>>,
              //         GenericState<List<ProductSections>>>(
              //       bloc: controller.sectionsCubit,
              //       builder: (context, state) {
              //         return ListView.builder(
              //           controller: controller.scrollController,
              //           itemCount: state.data.length,
              //           itemBuilder: (context, index) {
              //             return ListTile(
              //               title: Text('Item ${state.data[index]}',
              //                   style: AppTextStyle.s11_w400(
              //                     color: context.colors.black,
              //                   )),
              //             );
              //           },
              //         );
              //       },
              //     ),
              //   ),
              // ),
              BlocBuilder<GenericBloc<HomeDomainModel?>,
                  GenericState<HomeDomainModel?>>(
                bloc: controller.homeCubit,
                builder: (context, state) {
                  if (state is GenericUpdateState && state.data != null) {
                    return BuildHomeView(
                      homeDomainModel: state.data!,
                      controller: controller,
                    );
                  } else {
                    return const BuildLoadingHomeView();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
