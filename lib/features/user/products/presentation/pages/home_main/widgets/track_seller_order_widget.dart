part of 'home_main_widgets_imports.dart';

class TrackSellerOrderWidget extends StatelessWidget {
  final List<OrdersListDomainModel> currentOrders;
  final HomeMainController controller;

  const TrackSellerOrderWidget({super.key, required this.currentOrders, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: currentOrders.isNotEmpty,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            tr("track Your Current Orders"),
            style: AppTextStyle.s16_w600(color: context.colors.black),
          ),
          Gaps.vGap12,
          SizedBox(
            height: 160,
            child: ListView.builder(
              itemCount: currentOrders.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => controller.openCurrentOrderDetails(context, currentOrders[index]),
                  child: CurrentOrderWidget(
                    currentOrders: currentOrders[index],
                    controller: controller,
                    index: index,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
