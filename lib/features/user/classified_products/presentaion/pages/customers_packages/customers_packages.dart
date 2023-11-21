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
      appBar: DefaultAppBar(title: tr('customersPackages')),
      body: Column(
        children: [
          const BuildPackagesText(),
          Expanded(
            child: GenericListView(
              spacing: Dimens.dp15.r,
              runSpacing: Dimens.dp15.r,
              padding: Dimens.paddingAll15PX,
              type: ListViewType.gridApi,
              gridItemHeight: Dimens.dp205,
              cubit: controller.cusProducts,
              onRefresh: controller.getCusPackage,
              loadingWidget: const BuildPackagesLoading(),
              itemBuilder: (_, index, item) => BuildPackageCard(
                package: item,
                controller: controller,
              ),
            ),
          )
        ],
      ),
    );
  }
}
