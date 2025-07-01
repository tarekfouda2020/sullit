part of 'receiving_method_imports.dart';


class ReceivingMethod extends StatefulWidget {
  const ReceivingMethod({super.key});

  @override
  State<ReceivingMethod> createState() => _ReceivingMethodState();
}

class _ReceivingMethodState extends State<ReceivingMethod> {

  final ReceivingMethodController controller = ReceivingMethodController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr("cart"),bgColor: context.colors.white),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildCartStepper(current: 2),
          Gaps.vGap12,
          Padding(
            padding: Dimens.paddingStart20,
            child: Text("Select receiving method",
                style: AppTextStyle.s16_w600(color: context.colors.black)
            ),
          ),
          Gaps.vGap12,
          BlocBuilder<GenericBloc<int>,GenericState<int>>(
            bloc: controller.changeTabCubit,
            builder: (context, state) {
            return Padding(
              padding: Dimens.paddingHorizontal20PX,
              child: Column(
                children: [
                  ReceivingTypeWidget(controller: controller),
                  Gaps.vGap16,
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 300),
                  child: currentTab(state.data),
                  ),
                ],
              ),
            );
          },)
        ],
      ),
      bottomNavigationBar: ReceivingBottomNavWidget(controller: controller),

    );
  }

  Widget currentTab(int index){
    switch(index){
      case 0: return  Shipping(shippingController: controller.shippingController);
      case 1 : return  Delivery(deliveryController: controller.deliveryController);
      default: return Gaps.empty;
    }
  }


}
