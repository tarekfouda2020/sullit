part of 'widgets_imports.dart';

class PharmacyDetailsBottomNavWidget extends StatelessWidget {
  final PharmacyDetailsController controller;
  const PharmacyDetailsBottomNavWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<CartDomainModel>,
        GenericState<CartDomainModel>>(
      bloc: controller.cartItemsBloc,
      builder: (context, state) {
        return KeyboardVisibilityBuilder(builder: (context, isOPen) {
          return Visibility(
            visible: !isOPen && controller.neededAmount() >= 0,
            child: CustomBottomSafeAreaWidget(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    spacing: 5,
                    children: [
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Opacity(
                            opacity: controller.cartHaveSellerProduct()
                                ? 1
                                : 0.5,
                            child: DefaultButton(
                              title: tr("view_cart"),
                              margin: EdgeInsets.zero,
                              onTap: () => controller.onPressViewCart(
                                context,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        spacing: 7,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tr("total"),
                            style: AppTextStyle.s12_w400(
                                color: context.colors.textColor),
                          ),
                          DirhamPrice(
                              amount: "${state.data.calculableTotal}")
                        ],
                      ),
                      Gaps.hGap32,
                    ],
                  ),
                  Visibility(
                    visible: controller.neededAmount() > 0,
                    child: Row(
                      children: [
                        Gaps.hGap32,
                        DirhamPrice(
                            amount: controller.neededAmount().toStringAsFixed(2)
                        ),
                        Text(
                          " ${tr("needed_to_reach_minimum_order")}",
                          style: AppTextStyle.s16_w500(
                              color: context.colors.primary),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
      },
    );
  }
}
