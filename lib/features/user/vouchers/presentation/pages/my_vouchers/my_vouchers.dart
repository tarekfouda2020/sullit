part of 'my_vouchers_imports.dart';

class MyVouchers extends StatefulWidget {
  const MyVouchers({super.key});

  @override
  State<MyVouchers> createState() => _MyVouchersState();
}

class _MyVouchersState extends State<MyVouchers> with TickerProviderStateMixin {
  final MyVouchersController controller = MyVouchersController();

  @override
  void initState() {
    controller.initBottomNavigation(this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr("myVouchers"),
        bgColor: context.colors.white,
        size: 40,
      ),
      body: Column(
        children: [
          VouchersTabsView(controller: controller),
          Flexible(
            child: TabBarView(
              controller: controller.tabController,
              physics: const NeverScrollableScrollPhysics(),
              children: const [
                VouchersListView(type: VouchersType.valid),
                VouchersListView(type: VouchersType.used),
                VouchersListView(type: VouchersType.expired),
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    controller.tabController.dispose();
    super.dispose();
  }
}

enum VouchersType {
  valid,
  used,
  expired,
}
