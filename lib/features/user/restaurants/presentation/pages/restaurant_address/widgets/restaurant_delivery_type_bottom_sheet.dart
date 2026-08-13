part of 'widgets_imports.dart';

class RestaurantDeliveryTypeBottomSheet extends StatelessWidget {
  final RestaurantAddressController controller;
  final VoidCallback onConfirm;

  const RestaurantDeliveryTypeBottomSheet({
    super.key,
    required this.controller,
    required this.onConfirm,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp20,
        vertical: Dimens.dp20,
      ),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.sizeOf(context).height - (kToolbarHeight + 160),
      ),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: BlocBuilder<GenericBloc<List<PharmacyShippingDomainModel>>,
          GenericState<List<PharmacyShippingDomainModel>>>(
        bloc: controller.shippingDataCubit,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const BottomSheetHeaderWidget(
                title: "Choose Delivery Type",
              ),
              Gaps.vGap12,
              Text(
                "Please select a delivery type for your order",
                style: AppTextStyle.s16_w400(color: context.colors.textColor),
              ),
              Gaps.vGap18,
              Flexible(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: state.data.length,
                  itemBuilder: (context, index) {
                    return RestaurantDeliveryTypeItemWidget(
                      model: state.data[index],
                      controller: controller,
                      onRefresh: () => controller.shippingDataCubit
                          .onUpdateData(controller.shippingDataCubit.state.data),
                    );
                  },
                ),
              ),
              Gaps.vGap16,
              DefaultButton(
                title: tr("confirm"),
                margin: EdgeInsets.zero,
                onTap: onConfirm ,
              ),
            ],
          );
        },
      ),
    );
  }
}
