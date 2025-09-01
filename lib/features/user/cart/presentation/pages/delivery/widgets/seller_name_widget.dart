part of 'delivery_widgets_imports.dart';

class SellerNameWidget extends StatelessWidget {
  final SellerShipping shipping;
  const SellerNameWidget({super.key, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 9,horizontal: 23).r,
      decoration:  CustomDecoration(
        myBoxShadow: const [],
        radius: Dimens.borderRadius12PX
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tr("seller"),
          style: AppTextStyle.s12_w400(color: context.colors.textColor),
          ),
          Gaps.vGap4,
          Row(
            children: [
              Text(shipping.name,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
