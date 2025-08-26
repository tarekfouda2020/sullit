part of 'track_order_imports.dart';

class TrackOrderController {
  late final int orderId;

  final GenericBloc<Orders?> orderBloc = GenericBloc(null);
  final GenericBloc<bool> orderSummaryVisible = GenericBloc(false);
  final GenericBloc<TrackOrderModel?> trackOrderCubit = GenericBloc<TrackOrderModel?>(null);
  final TextEditingController orderCodeController = TextEditingController();

  TrackOrderController(this.orderId);

  Future<void> getTrackOrder() async {
   await GetTrackHistory().call(orderId).then((value) {
      if (value != null) {
        trackOrderCubit.onUpdateData(value);
      }
    });
  }

  final List<TrackOrderEnum> trackOrderStatus = [
    TrackOrderEnum.placed,
    TrackOrderEnum.confirmed,
    TrackOrderEnum.pickedUp,
    TrackOrderEnum.onTheWay,
    TrackOrderEnum.delivered,
  ];
}
