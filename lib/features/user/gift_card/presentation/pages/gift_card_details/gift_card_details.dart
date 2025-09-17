part of 'gift_card_details_imports.dart';

class GiftCardDetails extends StatefulWidget {
  final bool isMyGiftCard;
  final int giftCardId;

  const GiftCardDetails({super.key, required this.isMyGiftCard, required this.giftCardId});

  @override
  State<GiftCardDetails> createState() => _GiftCardDetailsState();
}

class _GiftCardDetailsState extends State<GiftCardDetails> {

  late final GiftCardDetailsController controller;

  @override
  void initState() {
    super.initState();
    controller = GiftCardDetailsController(widget.isMyGiftCard, widget.giftCardId);
  }


  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.refreshCubit,
      builder: (context, state) {
        return Scaffold(
          backgroundColor: context.colors.customBackground,
          appBar: DefaultAppBar(
            title: (controller.isMyGiftCard) ? tr("myGiftCardDetails") : tr("giftCardDetails"),
            elevation: 0,
            onBack: () => controller.onPop(context),
          ),
          body: ListView(
            padding: Dimens.paddingHorizontal20PX,
            children: [
              const BuildHeaderLogo(marginTop: 5,marginBottom: 15),
              GiftCardDetailsWidget(controller: controller),
              GiftCardFooterSectionWidget(controller: controller)
            ],
          ),
        );
      },
    );
  }
}
