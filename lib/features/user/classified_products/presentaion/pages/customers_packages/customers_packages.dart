part of 'customers_packages_imports.dart';

class CustomersPackages extends StatefulWidget {
  const CustomersPackages({Key? key}) : super(key: key);

  @override
  State<CustomersPackages> createState() => _CustomersPackagesState();
}

class _CustomersPackagesState extends State<CustomersPackages> {
  late CustomerPackagesController controller;

  @override
  void initState() {
    controller = CustomerPackagesController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar:  DefaultAppBar(
        title: tr('customersPackages'),
      ),
      body: BlocBuilder<GenericBloc<List<CusPackage>>,
          GenericState<List<CusPackage>>>(
        bloc: controller.cusProducts,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Column(
              children: [
                const BuildPackagesText(),
                BuildPackagesView(
                  packages: state.data,
                  controller: controller,
                )
              ],
            );
          } else {
            return const BuildPackagesLoading();
          }
        },
      ),
    );
  }
}
