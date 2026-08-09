part of '../instore_checkout_imports.dart';

class InstorePayOptionWidget extends StatelessWidget {
  final InstoreCheckoutController controller;

  const InstorePayOptionWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<PaymentOption>>,
        GenericState<List<PaymentOption>>>(
      bloc: controller.paymentOptionsBloc,
      builder: (context, state) {
        final payment = controller.selectedPaymentOption;
        if (payment == null) {
          return const SizedBox.shrink();
        }

        return Row(
          children: [
            CachedImage(
              url: payment.image,
              boxShape: BoxShape.circle,
              haveRadius: false,
              fit: BoxFit.contain,
              width: 35,
              height: 35,
            ),
            Gaps.hGap10,
            Expanded(
              child: Text(
                payment.title,
                style: AppTextStyle.s14_w700(color: context.colors.black),
              ),
            ),
            GestureDetector(
              onTap: () => controller.paymentMethodSheet(context),
              child: Row(
                children: [
                  Text(
                    tr('change'),
                    style: AppTextStyle.s14_w400(color: context.colors.primary),
                  ),
                  Gaps.hGap7,
                  Icon(Icons.arrow_forward, color: context.colors.primary),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
