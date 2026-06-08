part of 'cart_payment_widgets_imports.dart';

class CartDiscountWidget extends StatelessWidget {
  final CartPaymentController controller;
  const CartDiscountWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CartPaymentSectionTitleWidget(title: tr("discount")),
        Gaps.vGap9,
        Container(
          padding: const EdgeInsetsDirectional.only(top: 19, bottom: 10),
          decoration: CustomDecoration(
              myBoxShadow: const [],
              boxBorder: Border.all(color: context.colors.borderColor)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(start: 18, end: 24),
                child: Column(
                  children: [
                    LoyaltyDiscountWidget(controller: controller),
                    Gaps.vGap10,
                    Divider(color: context.colors.softGray),
                    Gaps.vGap7,
                    BuildCoupon(controller: controller),
                  ],
                ),
              ),
              // SizedBox(
              //   height: 80,
              //   child: SingleChildScrollView(
              //     scrollDirection: Axis.horizontal,
              //       child: Row(
              //     spacing: 12,
              //     children: List.generate(3, (index) {
              //       return  VoucherTicketCardWidget(index: index,isLast: index == 3-1,);
              //     },),
              //   )),
              // )
            ],
          ),
        )
      ],
    );
  }
}
