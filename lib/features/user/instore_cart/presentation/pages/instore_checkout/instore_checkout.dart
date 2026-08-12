part of 'instore_checkout_imports.dart';

class InstoreCheckout extends StatefulWidget {
  const InstoreCheckout({super.key});

  @override
  State<InstoreCheckout> createState() => _InstoreCheckoutState();
}

class _InstoreCheckoutState extends State<InstoreCheckout> {
   final InstoreCheckoutController  controller = InstoreCheckoutController();


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(
          title: tr('paymentCheckout'),
          bgColor: context.colors.white,
        ),
        body: BlocBuilder<GenericBloc<InstoreOrderSummaryModel?>,
            GenericState<InstoreOrderSummaryModel?>>(
          bloc: controller.summaryBloc,
          builder: (context, state) {
            if (state is! GenericUpdateState || state.data == null) {
              return const InstoreCheckoutShimmerWidget();
            }

            return ListView(
              cacheExtent: 9999,
              padding: Dimens.paddingHorizontal15PX,
              children: [
                Gaps.vGap16,
                InstorePaymentMethodWidget(controller: controller),
                Gaps.vGap12,
                if (!context.isShareHolder)
                  InstoreCartDiscountWidget(controller: controller),
                if (!context.isShareHolder) Gaps.vGap20,
                InstoreInvoiceSummaryWidget(controller: controller),
                Gaps.vGap20,
                InstoreCheckoutConditionsWidget(controller: controller),
                Gaps.vGap20,
                if (!context.isShareHolder)
                  InstoreBezatPointsSummaryWidget(controller: controller),
                if (!context.isShareHolder) Gaps.vGap25,
                Center(
                  child: Text(
                    tr('thank_you_for_order'),
                    style: AppTextStyle.s18_w500(color: context.colors.black),
                  ),
                ),
                Gaps.vGap25,
              ],
            );
          },
        ),
        bottomNavigationBar: BlocBuilder<GenericBloc<InstoreOrderSummaryModel?>,
            GenericState<InstoreOrderSummaryModel?>>(
          bloc: controller.summaryBloc,
          builder: (context, state) {
            if (state is! GenericUpdateState || state.data == null) {
              return const SizedBox.shrink();
            }
            return InstorePaymentButtonsWidget(
              controller: controller,
              onTap: () => controller.createOrder(context),
            );
          },
        ),
      ),
    );
  }
}
