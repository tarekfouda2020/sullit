part of 'track_order_imports.dart';

class TrackOrder extends StatefulWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  _TrackOrderState createState() => _TrackOrderState();
}

class _TrackOrderState extends State<TrackOrder> {
  final TrackOrderController controller=TrackOrderController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DefaultAppBar(title: "Track Order", showBack: true),
      body: ListView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
        children: [
          BuildTrackOrderField(
            controller: controller,
          ),
          BlocBuilder<GenericBloc<Orders?>,
              GenericState<Orders?>>(
            bloc: controller.orderBloc,
            builder: (context, state) {
              if(state is GenericUpdateState){
                return Column(
                  children: [
                    Text(
                      "Order Summary",
                      style: AppTextStyle.s18_w500(
                          color: context.colors.black),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 20,).r,
                      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 8).r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5).r,
                        color: context.colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: context.colors.greyWhite,
                            blurRadius: 1,
                            spreadRadius: 1,
                          )
                        ],
                      ),
                      child: Column(
                        children:  [
                          BuildTrackOrderSummaryItem(
                            title: "Order Code :",
                            subTitle: state.data!.code,
                          ),
                          BuildTrackOrderSummaryItem(
                            title: "Customer :",
                            subTitle: state.data!.customerName,
                          ),
                          BuildTrackOrderSummaryItem(
                            title: "E-mail :",
                            subTitle: state.data!.customerEmail,
                          ),
                          BuildTrackOrderSummaryItem(
                              title: "Shipping address :",
                              subTitle: state.data!.shippingAddress
                          ),
                          BuildTrackOrderSummaryItem(
                            title: "Order Date :",
                            subTitle: state.data!.orderDate,
                          ),
                          BuildTrackOrderSummaryItem(
                            title: "Total Order Amount :",
                            subTitle: state.data!.orderDate,
                          ),
                          BuildTrackOrderSummaryItem(
                              title: "Shipping Method :",
                              subTitle: state.data!.shippingMethod
                          ),
                          BuildTrackOrderSummaryItem(
                            title: "Payment Method :",
                            subTitle: state.data!.paymentMethod,
                          ),
                          BuildTrackOrderSummaryItem(
                            title: "Delivery Status :",
                            subTitle: state.data!.deliveryStatus,
                          ),
                          const BuildTrackOrderSummaryItem(
                            title: "Shipped By :",
                            subTitle: "admin",
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }else {
                return Container();
              }
            },
          ),
        ],
      ),
    );
  }
}
