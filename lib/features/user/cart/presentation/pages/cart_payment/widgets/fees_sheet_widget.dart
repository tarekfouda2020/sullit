part of 'cart_payment_widgets_imports.dart';

class FeesSheetWidget extends StatelessWidget {
  final GenericBloc<FessMechanismModel?> feesCubit;
  final bool showService;
  final bool showTech;
  final bool showDelivery;
  const FeesSheetWidget({super.key, required this.feesCubit,  this.showService = true,this.showTech = true,this.showDelivery = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      decoration:  BoxDecoration(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(15)),
        color: context.colors.white,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 10,
        children: [
           BottomSheetHeaderWidget(title: feesCubit.state.data!.title),
          if(showDelivery)
            Gaps.vGap8,
          if(showDelivery)
          FeesItemWidget(model: feesCubit.state.data!.delivery,),

          if(showService)
          Gaps.vGap8,
          if(showService)
          FeesItemWidget(model: feesCubit.state.data!.service,),

          if(showTech)
          Gaps.vGap8,
          if(showTech)
          FeesItemWidget(model: feesCubit.state.data!.technology,),
          Gaps.vGap30
        ],
      ),
    );
  }
}
