part of 'widgets_imports.dart';

class SelectReceivingMethodWidget extends StatelessWidget {
  final PharmacyAddressController controller;

  const SelectReceivingMethodWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Select receiving method",
          style: AppTextStyle.s16_w500(
            color: context.colors.black,
          ),
        ),
        Gaps.vGap15,
       BlocBuilder<GenericBloc<SellerShipping?>,
           GenericState<SellerShipping?>>(
         bloc: controller.sellerShippingInfoCubit,
         builder: (context, shippingData) {
         return  BlocBuilder<GenericBloc<DeliveryTypeEnum>,
             GenericState<DeliveryTypeEnum>>(
           bloc: controller.deliveryMethodCubit,
           builder: (context, state) {
             DeliveryTypeEnum selectedMethod = state.data;
             return Row(
               spacing: 12,
               children: [
                 Expanded(
                   child: Opacity(
                     opacity: controller.haveDelivery ? 1 : 0.5,
                     child: _buildMethodButton(
                       context: context,
                       label: "Delivery",
                       isSelected: selectedMethod == DeliveryTypeEnum.delivery,
                       onTap: () {
                         if(controller.haveDelivery){
                           controller.deliveryMethodCubit
                               .onUpdateData(DeliveryTypeEnum.delivery);
                         }

                       },
                     ),
                   ),
                 ),
                 Expanded(
                   child: Opacity(
                     opacity: controller.havePickUp ? 1 : 0.5,
                     child: _buildMethodButton(
                       context: context,
                       label: "Pickup",
                       isSelected: selectedMethod == DeliveryTypeEnum.pickUp,
                       onTap: () {
                       if(controller.havePickUp){
                         controller.deliveryMethodCubit
                             .onUpdateData(DeliveryTypeEnum.pickUp);
                       }
                       },
                     ),
                   ),
                 ),
               ],
             );
           },
         );
       },)
      ],
    );
  }

  Widget _buildMethodButton({
    required BuildContext context,
    required String label,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dp12,
          horizontal: Dimens.dp16,
        ),
        decoration: BoxDecoration(
          color: isSelected
              ? context.colors.lightPrimary
              : context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
          border: Border.all(
            color: isSelected
                ? context.colors.primary
                : context.colors.gray3,
            width: isSelected ? 2 : 1,
          ),
        ),
        child: Text(
          label,
          textAlign: TextAlign.center,
          style: AppTextStyle.s16_w600(
            color: isSelected
                ? context.colors.primary
                : context.colors.textColor,
          ),
        ),
      ),
    );
  }
}
