part of 'track_order_imports.dart';

class TrackOrderController {
  late final int orderId;

  final GenericBloc<Orders?> orderBloc = GenericBloc(null);
  final GenericBloc<bool> orderSummaryVisible = GenericBloc(false);
   GenericBloc<TrackOrderModel?> get trackOrderCubit => OrdersHelper.instance.trackOrderCubit;
  final TextEditingController orderCodeController = TextEditingController();

  TrackOrderController(this.orderId);

  Future<void> getTrackOrder() async {
  await OrdersHelper.instance.getTrackOrder(id: orderId);
  }

  final List<TrackOrderEnum> trackOrderStatus = [
    TrackOrderEnum.placed,
    TrackOrderEnum.confirmed,
    TrackOrderEnum.pickedUp,
    TrackOrderEnum.onTheWay,
    TrackOrderEnum.delivered,
  ];
}
