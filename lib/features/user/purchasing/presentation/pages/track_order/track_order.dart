part of 'track_order_imports.dart';

class TrackOrder extends StatefulWidget {
  final int orderId;

  const TrackOrder({Key? key, required this.orderId}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  late final TrackOrderController controller;

  @override
  void initState() {
    super.initState();
    controller = TrackOrderController(widget.orderId);
    controller.getTrackOrder();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('trackOrder')),
      body: BlocBuilder<GenericBloc<TrackOrderModel?>, GenericState<TrackOrderModel?>>(
        bloc: controller.trackOrderCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              padding: Dimens.paddingHorizontal15PX,
              children: [
                TrackOrderNumberWidget(
                  model: state.data!,
                ),
                Gaps.vGap17,
                Stack(
                  children: [
                    Column(
                      children:
                        List.generate(
                            5,
                                (index) {
                              return TrackStatusWidget(
                                isActive: false,
                                isLast: index == 4,
                              );
                            }),
                    ),
                    Column(
                      children: List.generate(state.data!.tracking.length, (index) {
                        return TrackOrderItemWidget(
                          statusModel: state.data!.tracking[index],
                          trackModel: state.data!,
                          isLast: index == 4,
                        );
                      }),
                    )

                  ],
                )

                // const TrackOrderItemWidget(
                //   isLast: false,
                //   trackStatus: TrackOrderEnum.placed,
                // ),
                // const TrackOrderItemWidget(
                //   isLast: false,
                //   trackStatus: TrackOrderEnum.pickedUp,
                // ),
                // const TrackOrderItemWidget(
                //   isLast: false,
                //   trackStatus: TrackOrderEnum.onTheWay,
                // ),
                // const TrackOrderItemWidget(
                //   isLast: true,
                //   trackStatus: TrackOrderEnum.delivered,
                // ),
                // BuildTrackOrderField(controller: controller),
                // BuildTrackOrderSummary(controller: controller),
              ],
            );
          } else {
            return const TrackingOrderShimmerWidget();
          }
        },
      ),
    );
  }


  // int inActiveItemsListLength(TrackOrderModel model){
  //   var isCancelled = model.tracking.map((e) => e.status).toList().contains("Cancelled");
  //   return 5;
  // }


}
