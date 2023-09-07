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
                  "Order Summary",
                  style: AppTextStyle.s18_w500(color: context.colors.black),
                ),
                BuildTrackOrderDetails(orderModel: state.data!),
              ],
            );
          } else {
            return Center(
              child: Text(
                "Check Your Code",
                style: AppTextStyle.s16_w500(color: context.colors.primary),
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
