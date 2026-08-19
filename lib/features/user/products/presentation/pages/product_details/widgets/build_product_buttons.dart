part of 'product_details_widgets_imports.dart';

class BuildProductButtons extends StatelessWidget {
  final ProductDetailsController controller;
  final ProductDetailsDomainModel detailsModel;

  const BuildProductButtons(
      {super.key, required this.controller, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: hasVariant ? !detailsModel.product.isOutOfStock : false,
      child: CustomBottomSafeAreaWidget(
        child: Padding(
          padding: EdgeInsetsDirectional.only(
              top: 10,
              start: 20,
              end: detailsModel.product.isOutOfStock ? 20 : 45),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        if (detailsModel.product.isOutOfStock) {
                          return;
                        }
                        controller.onAddToCart(context);
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: Dimens.paddingVertical10PX,
                        margin: Dimens.paddingAll5PX,
                        decoration: BoxDecoration(
                          color: detailsModel.product.isOutOfStock
                              ? context.colors.deepGray
                              : context.colors.primary,
                          borderRadius: Dimens.borderRadius30PX,
                        ),
                        child: Text(
                          detailsModel.product.isOutOfStock
                              ? tr('outOfStock')
                              : tr('addToCart'),
                          style: AppTextStyle.s18_w700(
                            color: context.colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                  if (!detailsModel.product.isOutOfStock) ...[
                    Gaps.hGap11,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          tr("total"),
                          style: AppTextStyle.s12_w400(
                            color: context.colors.textColor,
                          ),
                        ),
                        Gaps.vGap6,
                        BlocBuilder<GenericBloc<int>, GenericState<int>>(
                          bloc: controller.qtyCubit,
                          builder: (context, state) {
                            return DirhamPrice(
                              amount:
                                  "${detailsModel.product.variant?.calculablePrice}",
                              currencyOffset: -0.5,
                              currencyStyle: AppTextStyle.s18_w400(
                                color: context.colors.primary,
                              ),
                              // "${detailsModel.product.variant?.calculablePrice} ${detailsModel.product.currencySymbol}",
                              textStyle: AppTextStyle.s14_w600(
                                color: context.colors.primary,
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ]
                ],
              ),
              if (!detailsModel.product.isOutOfStock) ...[
                Gaps.vGap10,
                BlocBuilder<GenericBloc<CartDomainModel>,
                    GenericState<CartDomainModel>>(
                  bloc: controller.cartItemsBloc,
                  builder: (context, cartState) {
                    return BlocBuilder<GenericBloc<String>,
                        GenericState<String>>(
                      bloc: controller.remainingAmountBloc,
                      builder: (context, state) {
                        var remain = double.parse(state.data.cleanNumber);
                        return Visibility(
                          visible: (cartState.data.minimumStatus == false) &&
                              controller.remainToGetMinAmount() > 0 &&
                              remain > 0,
                          child: CartMinAmountNeededWidget(
                            minAmount: state.data,
                            sellerName:
                                "from '${cartState.data.getRequiredSellerName()}'",
                          ),
                        );
                      },
                    );
                  },
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }

  bool get hasVariant => detailsModel.product.variant != null;
}
