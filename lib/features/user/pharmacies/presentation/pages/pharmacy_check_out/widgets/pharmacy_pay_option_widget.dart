part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyPayOptionWidget extends StatelessWidget {
  final PharmacyCheckOutController controller;
  final Shipping shipping;
  const PharmacyPayOptionWidget(
      {super.key, required this.controller, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      // visible: Platform.isAndroid,
      child: BlocBuilder<GenericBloc<List<PaymentOption>>,GenericState<List<PaymentOption>>>(
        bloc: controller.paymentOptionsBloc,
        builder: (context, state) {
       if(state is GenericUpdateState) {
         return Row(
           children: [
             CachedImage(
               url: _selectedPaymentOption(state.data).image,
               boxShape: BoxShape.circle,
               haveRadius: false,
               fit: BoxFit.contain,
               width: 35,
               height: 35,
             ),
             Gaps.hGap10,
             Expanded(
               child: Text(_selectedPaymentOption(state.data).title,
                   style: AppTextStyle.s14_w700(color: context.colors.black)),
             ),
             GestureDetector(
               onTap: () => controller.paymentMethodSheet(context),
               child: Row(
                 children: [
                   Text(tr("change"),
                       style:
                       AppTextStyle.s14_w400(color: context.colors.primary)),
                   Gaps.hGap7,
                   Icon(Icons.arrow_forward, color: context.colors.primary)
                 ],
               ),
             ),
           ],
         );
       }else{
         return BuildShimmerItem(
           child: Row(
             children: [
               const CachedImage(
                 url: "",
                 boxShape: BoxShape.circle,
                 haveRadius: false,
                 fit: BoxFit.contain,
                 width: 35,
                 height: 35,
               ),
               Gaps.hGap10,
               Expanded(
                 child: Text("",
                     style: AppTextStyle.s14_w700(color: context.colors.black)),
               ),
               GestureDetector(
                 onTap: () => controller.paymentMethodSheet(context),
                 child: Row(
                   children: [
                     Text(tr("change"),
                         style:
                         AppTextStyle.s14_w400(color: context.colors.primary)),
                     Gaps.hGap7,
                     Icon(Icons.arrow_forward, color: context.colors.primary)
                   ],
                 ),
               ),
             ],
           ),
         );
       }
      },),
    );
  }

  PaymentOption _selectedPaymentOption(List<PaymentOption> data) {
    return data.firstWhere((element) => element.selected);
  }
}
