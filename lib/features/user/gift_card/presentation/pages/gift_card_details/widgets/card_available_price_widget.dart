part of 'gift_card_details_widgets_imports.dart';

class CardAvailablePrice extends StatelessWidget {
  final GiftCardDetailsController controller;

  const CardAvailablePrice({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 45),
      child: BlocBuilder<GenericBloc<GiftCardDomainModel?>, GenericState<GiftCardDomainModel?>>(
        bloc: controller.giftCardDetailsCubit,
        builder: (context, state) {
         if(state is GenericUpdateState){
           return  Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(tr("remainAmount"), style: AppTextStyle.s22_w400(color: context.colors.black)),
               Gaps.hGap5,
               Text(state.data!.price,
                   style: AppTextStyle.s24_w700(color: context.colors.primary)),
             ],
           );
         }else{
           return const BuildShimmerItem(
             width: 120,
             height: 30,
           );
         }
        },
      ),
    );
  }
}
