part of 'cart_confirm_buying_widgets_imports.dart';


class CartOrderDetailsWidget extends StatelessWidget {
  const CartOrderDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
            width: MediaQuery.of(context).size.width-40,
            padding: const EdgeInsets.only(top: 46,bottom: 20,right:21 ,left: 21).r,
            margin: const EdgeInsets.only(top: 43),
            decoration: CustomDecoration(
              thisColor: context.colors.white,
            ),
            child: Column(
              children: [
                Text("Thank You For Your Order!",
                style: AppTextStyle.s18_w700(color: context.colors.black),
                ),
                Gaps.vGap18,
                Gaps.line(context.colors.softGray, 0),
                Gaps.vGap8,
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
                const CartOrderInfoWidget(),
              ],
            )
        ),
        SvgPicture.asset(Res.orderConfirmImage),
      ],
    );
  }
}
