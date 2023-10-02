part of 'track_order_widgets_imports.dart';

class BuildTrackOrderSummary extends StatelessWidget {
  final TrackOrderController controller;

  const BuildTrackOrderSummary({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
      bloc: controller.orderBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          if (state.data != null) {
            return Column(
              children: [
                Text(
                  tr('orderSummary'),
                  style: AppTextStyle.s18_w500(color: context.colors.black),
                ),
                BuildTrackOrderDetails(orderModel: state.data!),
                ...List.generate(
                  state.data!.orderDetails.length,
                  (index) => BuildShippingDetailsItem(
                    orderModel: state.data!.orderDetails[index],
                  ),
                )
              ],
            );
          } else {
            return Padding(
              padding: const EdgeInsets.only(top: 200).r,
              child: Center(
                child: Text(
                  tr('checkYourCode'),
                  style: AppTextStyle.s16_w500(color: context.colors.primary),
                ),
              ),
            );
          }
        } else {
          return Container();
        }
      },
    );
  }
}
