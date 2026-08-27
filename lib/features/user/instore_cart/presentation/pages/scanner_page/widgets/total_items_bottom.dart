part of 'imports.dart';

class TotalItemsBottom extends StatelessWidget {
  final ScannerController controller;

  const TotalItemsBottom({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.colors.white,
      padding: const EdgeInsets.only(bottom: 20),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 20, end: 20, top: 15),
            child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: controller.refreshBloc,
              builder: (context, state) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TotalQntItemWidget(
                      text: "No. of items :",
                      child: Text(
                        controller.totalQntResult().toString(),
                        style: AppTextStyle.s18_w500(color: context.colors.primary),
                      ),
                    ),
                    TotalQntItemWidget(
                      text: "Total: ",
                      child: DirhamPrice(
                        amount: controller.totalPriceResult().toStringAsFixed(2),
                        currencyStyle: AppTextStyle.s16_w400(color: context.colors.primary),
                        textStyle: AppTextStyle.s14_w600(color: context.colors.primary),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),
          Gaps.vGap15,
          DefaultButton(
            title: 'View Cart',
            color: context.colors.primary,
            textColor: context.colors.white,
            onTap: () {
              AutoRouter.of(context).pop(controller.cartProducts);
            },
          ),
        ],
      ),
    );
  }
}
