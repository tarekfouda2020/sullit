part of 'receiving_method_widgets_imports.dart';

class ReceivingTypeWidget extends StatelessWidget {
  final ReceivingMethodController controller;

  const ReceivingTypeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<SellerShipping>>, GenericState<List<SellerShipping>>>(
      bloc:controller.pickupController.sellerShippingBloc,
      builder: (context, state) {
        return Row(
          children: [
            if(controller.isDeliverySupportedInAllSellers())
            Expanded(
                child: ReceivingTabItemWidget(
                    isSelected: controller.changeTabCubit.state.data == 0,
                    title: "Delivery",
                    onTap: () => controller.changeTabCubit.onUpdateData(0)
                )
            ),
            if(controller.isDeliverySupportedInAllSellers())
            Gaps.hGap12,
            if(controller.isPickUpInAllSellers())
            Expanded(
                child: ReceivingTabItemWidget(
                    isSelected: controller.changeTabCubit.state.data == 1,
                    title: "Pickup",
                    onTap: () => controller.onSelectPickUp(context)
                )
            ),
          ],
        );
      },
    );
  }
}
