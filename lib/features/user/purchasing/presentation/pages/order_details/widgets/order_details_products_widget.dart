part of 'order_details_widgets_imports.dart';

class OrderDetailsProductsWidget extends StatelessWidget {
  final bool isReturned;
  final Orders order;
  final OrderDetailsPageController controller;

  const OrderDetailsProductsWidget({
    super.key,
    required this.isReturned,
    required this.controller,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 19, right: 19, top: 17, bottom: 20).r,
      decoration: const CustomDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                tr("soldBy"),
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
              Gaps.hGap4,
              Text(
                ":",
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
              Gaps.hGap7,
              Text(
               order.soldBy,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap12,
          ..._getRegularItems().map((item) => OrderDetailsProductItemWidget(
                key: ValueKey(item.current?.id ?? item.history?.id),
                hasReview: item.current?.isAvailableReview ?? false,
                onPressReview: item.current != null
                    ? () => controller.reviewSheet(context, item.current)
                    : null,
                displayItem: item,
              )),
          if (_getRemovedItems().isNotEmpty) ...[
            Gaps.vGap8,
            OrderDetailsSectionsTitleWidget(title: tr("removedItems")),
            Gaps.vGap8,
            ..._getRemovedItems().map((item) => OrderDetailsProductItemWidget(
                  hasReview: false,
                  displayItem: item,
                )),
          ],
          if (_getAddedItems().isNotEmpty) ...[
            Gaps.vGap8,
            OrderDetailsSectionsTitleWidget(title: tr("addedItems")),
            Gaps.vGap8,
            ..._getAddedItems().map((item) => OrderDetailsProductItemWidget(
                  hasReview: false,
                  displayItem: item,
                )),
          ],
          if (isReturned || order.isInStore == true)
            Gaps.empty
            else
            Padding(
              padding: const EdgeInsets.only(top: 18),
              child: GestureDetector(
                onTap: () =>
                    AutoRouter.of(context).push(TrackOrderRoute(orderId: order.id)),
                child: Row(
                  children: [
                    if (!order.isCanceled)
                      Row(
                        children: [
                          Text(
                            tr("trackShipment"),
                            style: AppTextStyle.s14_w400(
                                color: context.colors.primary),
                          ),
                          Gaps.hGap10,
                          Icon(
                            Icons.arrow_forward_rounded,
                            color: context.colors.primary,
                          ),
                        ],
                      ),
                    const Spacer(),
                    Text(
                      order.orderStatus,
                      style:
                          AppTextStyle.s14_w700(color: context.colors.black),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }




  List<OrderDisplayItem> get _displayItems {
    final currentIds = order.orderDetails.map((e) => e.id).toSet();
    final currentRows = order.orderDetails.map((line) {
      final matched = order.displayItems?.where((d) => d.current?.id == line.id);
      return OrderDisplayItem(
        current: line,
        history: matched == null || matched.isEmpty ? null : matched.first.history,
      );
    });
    final historyOnly = (order.displayItems ?? []).where(
      (e) => e.current == null || !currentIds.contains(e.current!.id),
    );
    return [...currentRows, ...historyOnly];
  }

  List<OrderDisplayItem> _getRegularItems() => _displayItems
      .where((e) =>
          e.current != null && !e.isRemoved && !e.isReplace && !e.isAdded)
      .toList();

  List<OrderDisplayItem> _getRemovedItems() =>
      _displayItems.where((e) => e.isRemoved || e.isReplace).toList();

  List<OrderDisplayItem> _getAddedItems() =>
      _displayItems.where((e) => e.isAdded).toList();

}
