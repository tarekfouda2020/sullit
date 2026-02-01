part of 'home_main_widgets_imports.dart';

class TrackSellerOrderWidget extends StatelessWidget {
  final List<Orders> currentOrders;
  const TrackSellerOrderWidget({super.key, required this.currentOrders});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.builder(
        itemCount: currentOrders.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return CurrentOrderWidget(currentOrders: currentOrders[index],);
      },),
    );
  }
}
