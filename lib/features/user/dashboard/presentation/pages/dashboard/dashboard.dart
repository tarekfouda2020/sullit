part of 'dashboard_imports.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  late DashboardController controller;

  @override
  void initState() {
    controller = DashboardController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('dashboard'), showBack: true),
      body: BlocBuilder<GenericBloc<Dashboards?>, GenericState<Dashboards?>>(
        bloc: controller.dashboardsCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              padding: Dimens.standardPadding,
              children: [
                BuildDefaultShippingAddress(dashboardModel: state.data!),
                BuildDashboardView(dashboardModel: state.data!),
              ],
            );
          } else {
            return const BuildLoadingDashboard();
          }
        },
      ),
    );
  }
}
