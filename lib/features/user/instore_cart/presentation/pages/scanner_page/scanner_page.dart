part of 'scanner_page_imports.dart';

class ScannerPage extends StatefulWidget {

  const ScannerPage({super.key,});

  @override
  State<ScannerPage> createState() => _ScannerPageState();
}

class _ScannerPageState extends State<ScannerPage> {
   final ScannerController controller = ScannerController();



  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.white,
      appBar: DefaultAppBar(
        title: 'In-store Scanner',
        bgColor: context.colors.white,
      ),
      body: Column(
        children: [
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.refreshBloc,
            builder: (context, _) {
              InstoreCartModel? cart = InstoreCartHelper.instance.getLocalCart();
              return StoreHeaderWidget(
                sellerName: cart?.sellerName ?? '',
                sellerImage: cart?.sellerImage ?? '',
              );
            },
          ),
          Gaps.vGap12,
          Expanded(
            child: ScannerWidget(
              controller: controller,
            ),
          ),
          Gaps.vGap8,
          TotalItemsBottom(controller: controller,),
        ],
      ),
    );
  }
}
