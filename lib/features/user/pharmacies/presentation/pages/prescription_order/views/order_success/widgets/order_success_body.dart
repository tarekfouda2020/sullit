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
                    if(state.data!.sectionOrders?.first.orderDetails.isNotEmpty == true)
                    OrderPharamCardWidget(
                      url: state.data!.sectionOrders?.first.orderDetails.first.product?.shop?.logo ?? "",
                      text: state.data!.sectionOrders?.first.orderDetails.first.product?.shop?.name  ?? "",
                    ),
                    Gaps.vGap10,
                    Stack(
                      alignment: Alignment.topCenter,
                      clipBehavior: Clip.none,
                      children: [
                        PharmacyOrderDoneWidget(
                            data: state.data!, controller: controller),
                        if (state.data?.pharmNormalOrder == false)
                          SvgPicture.asset(Res.orderConfirmImage)
                        else if (state.data?.sectionOrders?.first.isCanceled ==
                            true)
                          SvgPicture.asset(Res.confirmationAlertIcon)
                      ],
                    ),
                    Gaps.vGap20,
                    if(state.data!.sectionOrders!.first.orderDetails.isNotEmpty)...[
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
                    if ((state.data!.sectionOrders?.first.additionalInfo ?? "")
                        .isNotEmpty) ...[
                      Gaps.vGap20,
                      AdditionalNotesWidget(
                        additionalInfo: state.data!.sectionOrders!.first.additionalInfo!,
                        pharmacyReply: state.data!.sectionOrders!.first.pharmacyReply,
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
                                context, state.data!.sectionOrders?.first.id),
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

  bool _showOrderInvoice(GenericState<OrderSummaryDomainModel?> state) =>
      state.data?.pharmNormalOrder == false &&
      state.data?.summary?.isPendingReview == false &&
      state.data?.sectionOrders?.first.isCanceled == false;
}
