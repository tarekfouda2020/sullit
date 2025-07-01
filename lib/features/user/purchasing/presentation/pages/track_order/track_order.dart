part of 'track_order_imports.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  final TrackOrderController controller = TrackOrderController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar:  DefaultAppBar(title: tr('trackOrder')),
      body: ListView(
        padding: Dimens.paddingHorizontal15PX,
        children: [
        const TrackOrderNumberWidget(),
       Gaps.vGap17,
          const TrackOrderItemWidget(
            isLast:  false,
            trackStatus: TrackOrderEnum.placed,
          ),
          const TrackOrderItemWidget(
            isLast:  false,
            trackStatus: TrackOrderEnum.packaging,
          ),
          const TrackOrderItemWidget(
            isLast:  false,
            trackStatus: TrackOrderEnum.shipped,
          ),
          const TrackOrderItemWidget(
            isLast:  true,
            trackStatus: TrackOrderEnum.delivered,
          ),
          // BuildTrackOrderField(controller: controller),
          // BuildTrackOrderSummary(controller: controller),

        ],
      ),
    );
  }
}
