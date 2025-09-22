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
            return CustomRefreshIndicatorWidget(
              onRefresh: () async => await controller.getTrackOrder(),
              child: ListView(
                padding: Dimens.paddingHorizontal15PX,
                children: [
                  TrackOrderNumberWidget(
                    model: state.data!,
                  ),
                  Gaps.vGap17,
                  Column(
                    children: List.generate(state.data!.tracking.length, (index) {
                      return TrackOrderItemWidget(
                        statusModel: state.data!.tracking[index],
                        trackModel: state.data!,
                        isLast: index == state.data!.tracking.length-1,
                      );
                    }),
                  )
                  // Stack(
                  //   children: [
                  //     Column(
                  //       children:
                  //         List.generate(
                  //             inActiveItemsListLength(state.data!),
                  //                 (index) {
                  //               return TrackStatusWidget(
                  //                 isActive: false,
                  //                 isLast: index == inActiveItemsListLength(state.data!)-1,
                  //               );
                  //             }),
                  //     ),
                  //     Column(
                  //       children: List.generate(state.data!.tracking.length, (index) {
                  //         return TrackOrderItemWidget(
                  //           statusModel: state.data!.tracking[index],
                  //           trackModel: state.data!,
                  //           isLast: index == inActiveItemsListLength(state.data!)-1,
                  //         );
                  //       }),
                  //     )
                  //
                  //   ],
                  // )

                ],
              ),
            );
          } else {
            return const TrackingOrderShimmerWidget();
          }
        },
      ),
    );
  }


  // int inActiveItemsListLength(TrackOrderModel model){
  //   var isCompleted = model.isCompleted;
  //  // (3 steps from dashboard) in case confirmed then delivered directly
  //   if( isCompleted && model.tracking.length == 3 ){
  //     return 3;
  //   }
  //   // (4 steps from dashboard) in case pickedUp then delivered directly
  //   if(isCompleted && model.tracking.length == 4){
  //     return 4;
  //   }
  //   // (5 steps from dashboard) in case onTheWay then delivered directly
  //   if(isCompleted && model.tracking.length == 5){
  //     return 5;
  //   }
  //   // (5 all steps number in regular case)
  //   return 5;
  // }


}
