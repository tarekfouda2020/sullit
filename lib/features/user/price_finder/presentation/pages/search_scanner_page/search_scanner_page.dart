part of 'search_scanner_imports.dart';

class SearchScannerPage extends StatefulWidget {
  const SearchScannerPage({super.key});

  @override
  State<SearchScannerPage> createState() => _SearchScannerPageState();
}

class _SearchScannerPageState extends State<SearchScannerPage> {
  final SearchScannerController controller = SearchScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: "Sahla Price Finder",
        bgColor: context.colors.white,
      ),
      body: Container(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
          top: 20,
          bottom: 80,
        ),
        color: context.colors.black.withOpacity(.83),
        child: Column(
          children: [
            GenericTextField(
              controller: controller.barcodeTextController,
              hint: 'Search By Barcode Number',
              suffixIcon: IconButton(
                icon: Transform.scale(
                  scale: 0.75,
                  child: SvgPicture.asset(
                    Res.searchIcon,
                  ),
                ),
                onPressed: () => controller.submitBarcodeText(context),
              ),
              fieldTypes: FieldTypes.normal,
              type: TextInputType.number,
              action: TextInputAction.search,
              // onSubmit: () =>(context),
              validate: (value) {},
            ),
            Gaps.vGap20,
            ScannerItemWidget(
              scannerController: controller.scannerController,
              detectBarcode: (BarcodeCapture capture) {
                return controller.detectBarcode(capture);
              },
              getProductWithSku: (BuildContext context, String barcode) {
                controller.getProductWithSku(context, barcode);
              },
            ),
          ],
        ),
      ),
    );
  }
}
