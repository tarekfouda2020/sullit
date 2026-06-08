part of 'gift_card_details_widgets_imports.dart';

class GiftCardCouponWidget extends StatelessWidget {
  final GiftCardDomainModel model;
  final GiftCardDetailsController controller;
  const GiftCardCouponWidget(
      {super.key, required this.model, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(top: 13, bottom: 17, end: 16),
      margin: const EdgeInsetsDirectional.only(start: 35, end: 35, top: 24),
      decoration: BoxDecoration(
          color: context.colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: [
          Text(
            tr("discountCode"),
            style: AppTextStyle.s14_w400(color: context.colors.white),
          ),
          Gaps.vGap15,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Gaps.hGap20,
              Flexible(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Text(
                    model.code ?? "",
                    style: AppTextStyle.s24_w800(color: context.colors.gold),
                  ),
                ),
              ),
              BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: controller.showCopyIcon,
                builder: (context, state) {
                  return Visibility(
                    visible: state.data,
                    child: GestureDetector(
                      onTap: () =>
                          getIt<Utilities>().copyToClipBoard(model.code ?? ""),
                      child: SvgPicture.asset(Res.copyIcon),
                    ),
                  );
                },
              )
            ],
          ),
          Gaps.vGap15,
          Text(
            tr("appliedOnOnlinePurchases"),
            style: AppTextStyle.s14_w400(color: context.colors.white),
          )
        ],
      ),
    );
  }
}

// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// const Expanded(flex: 1, child: Gaps.empty),
// Expanded(
// flex: 7,
// child: Column(
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [

// Gaps.vGap12,

// Gaps.vGap10,
// ],
// ),
// ),
// Expanded(
// flex: 1,
// )
// ],
// )
