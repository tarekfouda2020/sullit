part of 'retrieve_order_widgets_imports.dart';

class BuildRetrieveOrderItem extends StatelessWidget {
  final OrderDetails orderDetails;
  final RetrieveOrderController controller;

  const BuildRetrieveOrderItem(
      {super.key, required this.orderDetails, required this.controller});

  @override
  Widget build(BuildContext context) {
    var borderColor = orderDetails.isSelected == true
        ? context.colors.primary
        : context.colors.transparent;
    return InkWell(
      onTap: () => controller.onItemSelected(orderDetails),
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius5PX,
          border: Border.all(color: borderColor),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(.2),
              blurRadius: 1,
              spreadRadius: .5,
            )
          ],
        ),
        margin: Dimens.paddingVertical5PX,
        padding: Dimens.paddingAll15PX,
        child: Column(
          children: [
            Row(
              children: [
                CachedImage(
                  url: orderDetails.product?.thumbnailImage ?? "",
                  height: 70.r,
                  width: 70.r,
                  haveRadius: true,
                  fit: BoxFit.fill,
                  borderRadius: Dimens.borderRadius5PX,
                ),
                Gaps.hGap15,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BuildRetrieveOrderDetailsItem(
                        title: "${tr('product')} : ",
                        details: "${orderDetails.product?.name}",
                      ),
                      BuildRetrieveOrderDetailsItem(
                        title: "${tr('price')} : ",
                        details: orderDetails.price,
                      ),
                      BuildRetrieveOrderDetailsItem(
                        title: "${tr('tax')} : ",
                        details: "${orderDetails.tax}",
                      ),
                    ],
                  ),
                )
              ],
            ),
            Gaps.vGap10,
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BuildCustomBounce(
                  onTap: () => controller.decreaseQty(orderDetails),
                  iconData: CupertinoIcons.minus,
                ),
                Gaps.hGap10,
                BlocBuilder<GenericBloc<int>, GenericState<int>>(
                  bloc: orderDetails.qtyCubit,
                  builder: (context, state) {
                    return Text(
                      "${state.data}",
                      style: AppTextStyle.s16_w400(color: context.colors.black),
                    );
                  },
                ),
                Gaps.hGap10,
                BuildCustomBounce(
                  onTap: () => controller.increaseQty(orderDetails),
                  iconData: CupertinoIcons.add,
                ),
                Gaps.hGap10,
              ],
            )
          ],
        ),
      ),
    );
  }
}
