// ignore_for_file: library_private_types_in_public_api
part of 'shipping_imports.dart';

class Shipping extends StatefulWidget {
  const Shipping({Key? key}) : super(key: key);

  @override
  _ShippingState createState() => _ShippingState();
}

class _ShippingState extends State<Shipping> {
  final ShippingController controller = ShippingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
          // title: tr("shipping"),
          title: tr("cart"),
          bgColor: context.colors.white,
          onBack: () {
            final moved = getIt<CartNavigateHelper>()
                .setStep(CartNavigateHelper.cartStepIndex, force: true);
            if (!moved && Navigator.of(context).canPop()) {
              Navigator.of(context).maybePop();
            }
          }),
      body: Column(
        children: [
          const BuildCartStepper(current: 2),
          Gaps.vGap16,
          BuildNewShipping(controller: controller),
          Gaps.vGap15,
          ShippingAddressListWidget(controller: controller),

          // Flexible(
          //   child: GenericListView(
          //     type: ListViewType.api,
          //     cubit: controller.addressesBloc,
          //     onRefresh: controller.getAddress,
          //     padding: Dimens.paddingAll15PX,
          //     itemBuilder: (_, index, item) => BuildShippingAddressItem(
          //       address: item,
          //       controller: controller,
          //     ),
          //     loadingWidget: const BuildAddressLoading(),
          //     emptyWidget: const BuildAddressesEmptyView(),
          //   ),
          // )
        ],
      ),
      bottomNavigationBar: BuildShippingButtons(controller: controller),
    );
  }
}
