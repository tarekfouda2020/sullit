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
    /// 260012
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('trackOrder')),
      body: BlocBuilder<GenericBloc<TrackOrderModel?>, GenericState<TrackOrderModel?>>(
        bloc: controller.trackOrderCubit,
        builder: (context, state) {
          if(state is GenericUpdateState){
            return ListView(
              padding: Dimens.paddingHorizontal15PX,
              children: [
                TrackOrderNumberWidget(model: state.data!,),
                Gaps.vGap17,
                ...List.generate(
                    state.data!.tracking.length, (index) {
                  return TrackOrderItemWidget(
                    statusModel: state.data!.tracking[index],
                    trackModel: state.data!,
                    isLast: index == state.data!.tracking.length - 1,
                  );
                })

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
          }else{
            return const TrackingOrderShimmerWidget();
          }
        },
      ),
    );
  }
}
