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
        padding: Dimens.paddingAll15PX,
        children: [
          BuildTrackOrderField(controller: controller),
          BuildTrackOrderSummary(controller: controller),

        ],
      ),
    );
  }
}
