// ignore_for_file: library_private_types_in_public_api
part of 'delivery_imports.dart';

class Delivery extends StatefulWidget {
  const Delivery({Key? key,}) : super(key: key);

  @override
  _DeliveryState createState() => _DeliveryState();
}

class _DeliveryState extends State<Delivery> {
   final DeliveryController controller = DeliveryController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: context.colors.cartBg,
      appBar:   DefaultAppBar(
          // title: tr("delivery"),
          title: tr("cart"),
          bgColor: context.colors.white,
          onBack: () {
            final moved = getIt<CartNavigateHelper>()
                .setStep(CartNavigateHelper.shippingStepIndex, force: true);
            if (!moved && Navigator.of(context).canPop()) {
              Navigator.of(context).maybePop();
            }
          }),
      body: Column(
        children: [
          const BuildCartStepper(current: 3),
          Flexible(
            // height: MediaQuery.of(context).size.height*0.6,
            child : BlocBuilder<GenericBloc<List<SellerShipping>>,GenericState<List<SellerShipping>>>(
              bloc: controller.sellerShippingBloc,
                builder: (context, state) {
                  if(state is GenericUpdateState){
                    return LiquidPullToRefresh(
                      onRefresh: () => controller.getShippingInfo(),
                      backgroundColor: Colors.white,
                      color:  context.colors.primary.withOpacity(.5),
                      showChildOpacityTransition: false,
                      springAnimationDurationInMilliseconds: 500,
                      child: CupertinoScrollbar(
                        child: ListView.builder(
                          padding: Dimens.paddingHorizontal15PX,
                          itemCount: state.data.length,
                          itemBuilder: (context, index) {
                          return BuildDeliveryItem(
                            shippingModel: state.data[index],
                            controller: controller,
                          );
                        },),
                      ),
                    );
                  }else{
                    return getIt.get<LoadingHelper>().showLoadingView();
                  }
                },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BuildDeliveryButtons(controller: controller),
    );
  }
}


