part of 'category_details_widgets_imports.dart';


class ViewCartBottomNavWidget extends StatelessWidget {
  final CategoryDetailsController controller;

  const ViewCartBottomNavWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<CartDomainModel>, GenericState<CartDomainModel>>(
      bloc: controller.cartItemsBloc,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(
                    child: Opacity(
                      opacity: state.data.totalQnt > 0
                          ?1
                          :0.5,
                      child: DefaultButton(
                        height: Dimens.dp50,
                        margin: EdgeInsets.zero,
                        onTap: state.data.totalQnt > 0
                            ?() => getIt<CartHelper>().showCartSuccessSheet(context,controller: controller)
                            :(){},
                        title: "",
                      customLabel: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Visibility(
                            visible: state.data.totalQnt > 0,
                            child: Container(
                              width: Dimens.dp36,
                              height: Dimens.dp36,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  color: context.colors.white.withAlpha(60),
                                  shape: BoxShape.circle
                              ),
                              child: Text("${state.data.totalQnt}",
                                style: AppTextStyle.s18_w700(color: context.colors.white),
                              ),
                            ),
                          ),
                          Text("View Cart",
                            style: AppTextStyle.s18_w700(color: context.colors.white),
                          ),
                          Gaps.empty
                        ],
                      ),
                      ),
                    ),
                  ),
                  if((state.data.totalQnt ) > 0)
                  Padding(
                    padding: const EdgeInsetsDirectional.only(start: 5),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(tr("total"),
                        style: AppTextStyle.s12_w400(color: context.colors.black),
                        ),
                        Gaps.vGap8,
                       DirhamPrice(amount: state.data.subTotal?? "0.0" ,
                       textStyle: AppTextStyle.s18_w500(color: context.colors.primary),
                         currencyStyle: AppTextStyle.s20_w500(color: context.colors.primary),
                         currencyOffset: -1,
                       ),
                      ],
                    ),
                  ),
                  Gaps.hGap20,
                ],
              ),
              Gaps.vGap10,
              Row(
                children: [
                  if(state.data.minimumStatus == false)
                    Row(
                      children: [
                        SvgPicture.asset(
                          Res.warningIcon,
                        width: Dimens.dp17,
                          height: Dimens.dp17,
                        ),
                        Gaps.hGap6,
                        DirhamPrice(amount: controller.minAmountRemain,
                        textStyle: AppTextStyle.s16_w500(color: context.colors.primary),
                        ),
                        Gaps.hGap2,
                        Text("needed to reach minimum order",
                        style: AppTextStyle.s14_w400(color: context.colors.primary),
                        )
                      ],
                    )
                ],
              ),
              Gaps.vGap10,
            ],
          ),
        );
      },
    );
  }
}
