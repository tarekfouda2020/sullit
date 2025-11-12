part of 'cart_payment_widgets_imports.dart';

class FeesSheetWidget extends StatelessWidget {
  final GenericBloc<FessMechanismModel?> feesCubit;
  final bool showService;
  final bool showTech;
  final bool showDelivery;
  final bool showEnv;

  const FeesSheetWidget({
    super.key,
    required this.feesCubit,
    this.showService = true,
    this.showTech = true,
    this.showDelivery = true,
    this.showEnv = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
        color: context.colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
          BottomSheetHeaderWidget(title: feesCubit.state.data!.title),
          Gaps.vGap8,
          if (showDelivery)
            FeesItemWidget(
              model: feesCubit.state.data!.delivery,
            ),
          if (showService) Gaps.vGap8,
          if (showService)
            FeesItemWidget(
              model: feesCubit.state.data!.service,
            ),
          if (showTech)
            FeesItemWidget(
              model: feesCubit.state.data!.technology,
            ),
          if (showEnv)
            FeesItemWidget(
              model: feesCubit.state.data!.environment,
            ),
          Gaps.vGap30
        ],
      ),
    );
  }
}
