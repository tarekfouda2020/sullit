part of 'widgets_imports.dart';

class PharmacyOrderDetailsBody extends StatelessWidget {
  final PharmacyOrderDetailsController controller;

  const PharmacyOrderDetailsBody({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
      bloc: controller.orderDetailsBloc,
      builder: (context, state) {
        if (state is GenericUpdateState && state.data != null) {
          return CustomRefreshIndicatorWidget(
            onRefresh: () async => await controller.refreshData(),
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: Dimens.paddingAll20PX,
                    children: [
                      if(state.data!.orderDetails.isNotEmpty == true)
                      OrderPharamCardWidget(
                        url: state.data!.orderDetails.first.product?.shop?.logo ?? "",
                        text: state.data!.orderDetails.first.product?.shop?.name  ?? "",
                      ),
                      Gaps.vGap10,
                      Stack(
                        alignment: Alignment.topCenter,
                        clipBehavior: Clip.none,
                        children: [
                          PharmacyOrderDetailsDoneWidget(
                              data: state.data!, controller: controller),

                          if(state.data?.isCanceled == true)
                            SvgPicture.asset(Res.confirmationAlertIcon)
                         else if (state.data?.pharmNormalOrder == false && state.data?.isPendingReview == true )
                            SvgPicture.asset(Res.orderConfirmImage)
                        ],
                      ),
                      Gaps.vGap20,
                      if ((state.data?.additionalInfo ?? "").isNotEmpty) ...[
                        AdditionalNotesWidget(
                          additionalInfo: state.data!.additionalInfo!,
                          pharmacyReply: state.data!.pharmacyReply,
                        ),
                        Gaps.vGap20,
                      ],
                     if(state.data!.orderDetails.isNotEmpty)...[
                       Text(
                         "Products",
                         style:
                         AppTextStyle.s16_w700(color: context.colors.black),
                       ),
                       Gaps.vGap20,
                     ],
                      PharmacyOrderProductsWidget(
                        order: state.data!,
                      ),
                      Gaps.vGap20,
                      if (state.data?.isPendingReview == false && state.data?.isCanceled == false)
                        PharmacyConfirmSummaryWidget(
                            order: state.data!, controller: controller)
                    ],
                  ),
                ),
                CustomBottomSafeAreaWidget(
                  child: Column(
                    spacing: 12,
                    children: [
                      if(state.data?.isCanceled == true)
                        DefaultButton(
                          title: "Reorder",
                          onTap: () => controller.reOrder(
                              context,
                            prescriptionRequired: state.data?.requiresPrescriptionReview == true
                          ),
                          textColor: context.colors.white,
                          color: context.colors.mainGreen,
                          borderColor: context.colors.mainGreen,
                        )
                        else
                      Visibility(
                          visible:
                              state.data!.awaitingCustomerCompletion == true,
                          replacement: Visibility(
                            visible: state.data!.isPendingReview == false,
                            child: DefaultButton(
                              title: "Track Shipment",
                              onTap: () =>
                                  controller.routeToTrackOrder(context),
                              textColor: context.colors.white,
                              color: context.colors.mainGreen,
                              borderColor: context.colors.mainGreen,
                            ),
                          ),
                          child: _buildColumn(state, context))
                    ],
                  ),
                )
              ],
            ),
          );
        } else {
          return const PharmacyOrderDetailsShimmerWidget();
        }
      },
    );
  }

  Widget _buildColumn(GenericState<Orders?> state, BuildContext context) {
    return CustomBottomSafeAreaWidget(
      child: Column(
        spacing: 12,
        children: [
          if (state.data?.awaitingCustomerCompletion == true &&
              state.data?.isPendingReview == false)
            DefaultButton(
              title: "Confirm & Pay Now",
              onTap: () => controller.routeToCheckout(context),
              textColor: context.colors.white,
              color: context.colors.mainGreen,
              borderColor: context.colors.mainGreen,
              margin: const EdgeInsets.symmetric(horizontal: Dimens.dp16),
            ),
          if (state.data?.availableCancelOrder == true &&
              state.data?.isPendingReview == false)
            DefaultButton(
              title: "Cancel Order",
              onTap: () => controller.cancelOrder(context),
              textColor: context.colors.gray8,
              color: context.colors.white,
              borderColor: context.colors.gray8,
              margin: const EdgeInsets.symmetric(horizontal: Dimens.dp16),
            ),
        ],
      ),
    );
  }
}
