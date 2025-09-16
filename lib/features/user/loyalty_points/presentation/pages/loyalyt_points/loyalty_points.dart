part of 'loyalty_points_imports.dart';

class LoyaltyPoints extends StatefulWidget {
  const LoyaltyPoints({super.key});

  @override
  State<LoyaltyPoints> createState() => _LoyaltyPointsState();
}

class _LoyaltyPointsState extends State<LoyaltyPoints> {
  late LoyaltyPointsController controller = LoyaltyPointsController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr("loyaltyPoints")),
      body: Padding(
        padding: Dimens.paddingHorizontal20PX,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LoyaltyPointsInfo(
              controller: controller,
            ),
            Text(
              tr('transactions'),
              style: AppTextStyle.s20_w700(color: context.colors.black),
            ),
            Gaps.vGap12,
            // QrImageView(),
            Expanded(
              child: CustomRefreshIndicatorWidget(
                onRefresh: () => controller.getTransactions(1),
                child: PagedListView<int, TransactionsDomainModel>(
                  pagingController: controller.pagingController,
                  builderDelegate: PagedChildBuilderDelegate<TransactionsDomainModel>(
                    itemBuilder: (_, item, index) {
                      return LoyaltyTransactionItemWidget(
                        controller: controller,
                        model: item,
                      );
                    },
                    noItemsFoundIndicatorBuilder: (cxt) {
                      return Center(
                        child: Text(
                          tr("noTransactionsFound"),
                          style: AppTextStyle.s16_w700(color: context.colors.black),
                        ),
                      );
                    },
                    firstPageProgressIndicatorBuilder: (_) => Column(
                      children: List.generate(5, (index) {
                        return Container();
                      }),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
