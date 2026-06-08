part of 'widgets_imports.dart';

class OrderSuccessBody extends StatelessWidget {
  final OrderSuccessController controller;
  const OrderSuccessBody({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<OrderSummaryDomainModel?>,
        GenericState<OrderSummaryDomainModel?>>(
      bloc: controller.orderSummaryBloc,
      builder: (context, state) {
       if(state is GenericUpdateState && state.data!= null){
         return CustomRefreshIndicatorWidget(
           onRefresh: () async => await controller.refreshData(),
           child: ListView(
             padding: Dimens.paddingAll20PX,
             children: [
               Gaps.vGap10,
               Stack(
                 alignment: Alignment.topCenter,
                 clipBehavior: Clip.none,
                 children: [
                    PharmacyOrderDoneWidget(data: state.data!),
                   SvgPicture.asset(Res.orderConfirmImage),
                 ],
               ),
               Gaps.vGap20,
               Text(
                 "Products",
                 style: AppTextStyle.s16_w700(color: context.colors.black),
               ),
               Gaps.vGap20,
               ...List.generate(state.data!.sectionOrders!.length, (index) {
                 return PharmacyOrderProductsWidget(
                   order: state.data!.sectionOrders![index],
                 );
               }),
               Gaps.vGap20,
               PharmacyConfirmSummaryWidget(orderSummary: state.data!, controller: controller)
             ],
           ),
         );
       }else{
         return Gaps.empty;
       }
      },
    );
  }
}
