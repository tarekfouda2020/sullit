part of 'purchased_history_imports.dart';

class PurchasedHistory extends StatefulWidget {
  const PurchasedHistory({Key? key}) : super(key: key);

  @override
  State<PurchasedHistory> createState() => _PurchasedHistoryState();
}

class _PurchasedHistoryState extends State<PurchasedHistory> {
  late PurchasedHistoryController controller;

  @override
  void initState() {
    controller = PurchasedHistoryController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Purchased History", showBack: true),
      body: RefreshIndicator(
        onRefresh: () => controller.getPurchasingHistory(1),
        child: PagedListView<int, Orders>(
          padding: Dimens.paddingAll15PX,
          pagingController: controller.pagingController,
          builderDelegate: PagedChildBuilderDelegate<Orders>(
            firstPageProgressIndicatorBuilder: (_) =>
                const BuildHistoryLoading(),
            itemBuilder: (_, item, index) => BuildPurchasedHistoryItem(
              order: item,
              controller: controller,
            ),
            noItemsFoundIndicatorBuilder: (cxt) {
              return Text(
                "No items in the history. !",
                style: AppTextStyle.s12_w400(
                  color: context.colors.black,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
