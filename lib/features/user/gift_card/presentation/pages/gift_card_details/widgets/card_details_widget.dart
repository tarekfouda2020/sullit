part of 'gift_card_details_widgets_imports.dart';

class GiftCardDetailsWidget extends StatelessWidget {
  final GiftCardDetailsController controller;

  const GiftCardDetailsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<GiftCardDomainModel?>, GenericState<GiftCardDomainModel?>>(
      bloc: controller.giftCardDetailsCubit,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Screenshot(
                controller: controller.screenshotController,
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 26, horizontal: 10).r,
                  margin: const EdgeInsets.only(top: 85),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            context.colors.darkRed,
                            context.colors.primary,
                          ])
                  ),
                  child: Column(
                    children: [
                      Gaps.vGap30,
                      GiftCardInfoWidget(controller: controller, model: state.data!,),
                      if(controller.isMyGiftCard)
                         GiftCardBarcodeWidget(model: state.data!,),
                      if(controller.isMyGiftCard)
                        GiftCardCouponWidget(
                        model: state.data!,
                        controller: controller
                        )
                    ],
                  ),
                ),
              ),
              Positioned(
                child: Image.asset(Res.giftCardPlaceholder),
              )
            ],
          );
        } else {
          return const GiftCardDetailsShimmerWidget();
        }
      },
    );
  }
}
