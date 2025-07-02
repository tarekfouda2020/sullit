part of 'product_details_widgets_imports.dart';

class CartSuccessSheetWidget extends StatelessWidget {
  const CartSuccessSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      margin: const EdgeInsets.only(top: kToolbarHeight+15),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(
            title: tr("cart"),
          ),
          Gaps.vGap20,
          Flexible(
              child: SingleChildScrollView(
            child: Column(
              children: List.generate(2, (index) {
                return const CartSheetItemWidget();
              }),
            ),
          )),
          Gaps.vGap16,
          DefaultButton(
            title: tr('returnToShop'),
            onTap: () => AutoRouter.of(context).push(HomeRoute(index: 0)),
            borderColor: context.colors.primary,
            color: context.colors.white,
            textColor: context.colors.primary,
            margin: EdgeInsets.zero,
          ),
          Gaps.vGap14,
          DefaultButton(
            title: "${tr('checkout')} - 80.00 AED",
            onTap: () => AutoRouter.of(context).popAndPush(const CartRoute()),
            margin: EdgeInsets.zero,
          ),
          Gaps.vGap10,
        ],
      ),
    );
  }
}
