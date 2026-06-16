part of 'widgets_imports.dart';

class PharmacyDeliveryTypeBottomSheet extends StatelessWidget {
  final GenericBloc<List<PharmacyShippingDomainModel>> shippingDataCubit;
  final VoidCallback onConfirm;
  final bool Function() canConfirm;

  const PharmacyDeliveryTypeBottomSheet({
    super.key,
    required this.shippingDataCubit,
    required this.onConfirm,
    required this.canConfirm,
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
        bloc: shippingDataCubit,
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
                    return PharmacyDeliveryTypeItemWidget(
                      model: state.data[index],
                      onRefresh: () => shippingDataCubit
                          .onUpdateData(shippingDataCubit.state.data),
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
