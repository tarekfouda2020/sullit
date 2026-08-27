part of 'home_main_imports.dart';

class HomeMain extends StatefulWidget {
  final HomeController homeController;

  const HomeMain({Key? key, required this.homeController}) : super(key: key);

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  late HomeMainController controller;

  @override
  void initState() {
    controller = HomeMainController(context, widget.homeController);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    controller.getDistance();
    return MyScaffold(
      body: SafeArea(
        child: Column(
          children: [
            BuildHomeMainAppBar(homeMainController: controller),
            // const BuildDiscountMsg(),
            BlocBuilder<GenericBloc<HomeDomainModel?>, GenericState<HomeDomainModel?>>(
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
    );
  }
}
