part of 'cart_confirm_buying_widgets_imports.dart';

class CartOrderInfoWidget extends StatelessWidget {
  const CartOrderInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        OrderINfoItemWidget(
          title: 'Date',
          describe: '10 feb 2025 - 09:55 PM',
          gaps: Gaps.hGap16,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Status',
          describe: 'Delivered',
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Total Items',
          describe: '5',
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Receipt Status',
          describe: 'Delivery',
          gaps: Gaps.hGap9,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Address',
          describe: 'Home , Dubai',
          gaps: Gaps.hGap7,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Phone',
          describe: '+99753583245',
          gaps: Gaps.hGap17,
        ),
        Gaps.vGap8,
        OrderINfoItemWidget(
          title: 'Payment Method',
          describe: 'Apple Pay',
          gaps: Gaps.hGap9,
        ),
      ],
    );
  }
}
