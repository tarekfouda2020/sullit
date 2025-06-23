part of 'product_details_widgets_imports.dart';

class BuildProductButtons extends StatelessWidget {
  final ProductDetailsController controller;
  final ProductDetailsDomainModel detailsModel;

  const BuildProductButtons({super.key, required this.controller, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    bool hasVariant = detailsModel.product.variant != null;
    return Visibility(
      visible: hasVariant ? detailsModel.product.variant!.currentStock! > 0 : false,
      child: Padding(
        padding: const EdgeInsetsDirectional.only(top: 10,bottom: 10,start: 20,end: 45),
        child: SizedBox(
          height: 45.h,
          child: Row(
            children: [
              Expanded(
                child: InkWell(
                  onTap: () => controller.onAddToCart(context),
                  child: Container(
                    alignment: Alignment.center,
                    padding: Dimens.paddingVertical10PX,
                    margin: Dimens.paddingAll5PX,
                    decoration: BoxDecoration(
                      color: context.colors.primary,
                      borderRadius: Dimens.borderRadius30PX,
                    ),
                    child: Text(
                      tr('addToCart'),
                      style: AppTextStyle.s18_w700(
                        color: context.colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Gaps.hGap11,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(tr("total"),
                    style: AppTextStyle.s12_w400(
                      color: context.colors.textColor,
                    ),
                  ),
                  Gaps.vGap6,
                  BlocBuilder<GenericBloc<int>, GenericState<int>>(
                    bloc: controller.qtyCubit,
                    builder: (context, state) {
                      return Text(
                        "${detailsModel.product.variant?.calculablePrice} ${detailsModel.product.currencySymbol}",
                        style: AppTextStyle.s14_w600(
                          color: context.colors.primary,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
