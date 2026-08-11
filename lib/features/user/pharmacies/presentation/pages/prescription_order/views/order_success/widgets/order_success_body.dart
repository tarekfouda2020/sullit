part of 'widgets_imports.dart';

class OrderSuccessBody extends StatelessWidget {
  final OrderSuccessController controller;

  const OrderSuccessBody({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<OrderSummaryDomainModel?>,
        GenericState<OrderSummaryDomainModel?>>(
      bloc: controller.orderSummaryBloc,
      builder: (context, state) {
        if (state is GenericUpdateState && state.data != null) {
          return Column(
            spacing: 30,
            children: [
              Expanded(
                child: ListView(
                  padding: Dimens.paddingAll20PX,
                  children: [
                    Gaps.vGap10,
                    if(controller.firstSectionOrder?.orderDetails.isNotEmpty == true)
                    OrderPharamCardWidget(
                      url: _buildShop()?.soldBy ?? "",
                      text: _buildShop()?.soldBy  ?? "",
                    ),
                    Gaps.vGap10,
                    Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        PharmacyOrderDoneWidget(data: state.data!, controller: controller),
                        if (controller.firstSectionOrder?.isCanceled == false)
                          SvgPicture.asset(Res.orderConfirmImage)
                        else if (controller.firstSectionOrder?.isCanceled == true)
                          SvgPicture.asset(Res.confirmationAlertIcon)
                      ],
                    ),
                    Gaps.vGap20,
                    if(controller.firstSectionOrder?.orderDetails.isNotEmpty == true)...[
                      Text(
                        "Products",
                        style: AppTextStyle.s16_w700(color: context.colors.black),
                      ),
                      Gaps.vGap20,
                    ],
                    ...List.generate(state.data!.sectionOrders!.length,
                        (index) {
                      return PharmacyOrderProductsWidget(
                        order: state.data!.sectionOrders![index],
                      );
                    }),
                    if ((controller.firstSectionOrder?.additionalInfo ?? "")
                        .isNotEmpty) ...[
                      Gaps.vGap10,
                      AdditionalNotesWidget(
                        additionalInfo: controller.firstSectionOrder!.additionalInfo!,
                        pharmacyReply: controller.firstSectionOrder!.pharmacyReply,
                      ),
                    ],
                    Gaps.vGap20,
                    if (_showOrderInvoice(state))
                      PharmacyConfirmSummaryWidget(
                          orderSummary: state.data!, controller: controller)
                  ],
                ),
              ),
              if (state.data?.summary?.isPendingReview == false)
                CustomBottomSafeAreaWidget(
                    child: Visibility(
                        visible: state.data?.pharmNormalOrder == true,
                        replacement: PaharmCancelConfirmOrderWidget(
                          controller: controller,
                        ),
                        child: Visibility(
                          visible:
                              (state.data?.sectionOrders?.length ?? 0) == 1,
                          child: DefaultButton(
                            title: "Track Shipment",
                            onTap: () => controller.routeToTrackOrder(
                                context, controller.firstSectionOrder?.id),
                            textColor: context.colors.white,
                            color: context.colors.green,
                            borderColor: context.colors.green,
                          ),
                        )))
            ],
          );
        } else {
          return Gaps.empty;
        }
      },
    );
  }

  OrderDetails? _buildShop() => controller.firstSectionOrder?.orderDetails.first;

  bool _showOrderInvoice(GenericState<OrderSummaryDomainModel?> state) =>
      state.data?.pharmNormalOrder == true &&
      state.data?.summary?.isPendingReview == false &&
      controller.firstSectionOrder?.isCanceled == false;
}
