part of 'seller_order_details_widgets_imports.dart';

class BuildOrderPrice extends StatelessWidget {
  const BuildOrderPrice({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.dp15),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          const BuildDetailsItem(title: "Sub Total", desc: "222 د.إ"),
          const BuildDetailsItem(title: "Tax", desc: "222 د.إ"),
          const BuildDetailsItem(title: "Shipping", desc: "222 د.إ"),
          const BuildDetailsItem(title: "Coupon", desc: "222 د.إ"),
          const BuildDetailsItem(title: "Reseller Amount", desc: "222 د.إ"),
          Gaps.line(context.colors.gray, 10),
          const BuildDetailsItem(
              title: "Total", desc: "222 د.إ", isColor: true),
        ],
      ),
    );
  }
}
