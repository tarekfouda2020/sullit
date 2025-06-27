part of 'order_details_widgets_imports.dart';

class OrderInfoWidget extends StatelessWidget {
  final bool isReturned;
  const OrderInfoWidget({super.key, required this.isReturned});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 12,bottom: 20,right:21 ,left: 21).r,
      decoration: CustomDecoration(
        thisColor: context.colors.white,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Order No. : ",
                style: AppTextStyle.s18_w300(color: context.colors.black),
              ),
              Text(
                "3253646",
                style: AppTextStyle.s18_w300(color: context.colors.primary),
              ),
            ],
          ),
          Gaps.vGap8,
          Gaps.line(context.colors.softGray, 0),
          Gaps.vGap14,
          Visibility(
            visible: isReturned,
            replacement:const OrderDetailsWidget() ,
            child: const ReturnedOrderDetailsWidget(),
          ),
        ],
      )
    );
  }

}
