part of 'downloads_import.dart';

class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
  late DownloadsController controller;

  @override
  void initState() {
    controller = DownloadsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('downloads'), showBack: true),
      body: GenericListView(
        padding: Dimens.paddingAll15PX,
        type: ListViewType.api,
        cubit: controller.productsCubit,
        onRefresh: controller.getDigitalProducts,
        itemBuilder: (_, index, item) => BuildDownloadsItem(
          productModel: item,
          controller: controller,
        ),
        loadingWidget: const BuildLoadingDownloads(),
        emptyWidget: const BuildEmptyDataView(),
      ),
    );
  }
}
