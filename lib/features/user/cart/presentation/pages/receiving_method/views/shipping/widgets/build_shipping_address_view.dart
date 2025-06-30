part of 'shipping_widgets_imports.dart';
class BuildShippingAddressView extends StatelessWidget {
  final ShippingController controller ;
  const BuildShippingAddressView({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        controller.addressesBloc.state.data.length, (index) {
        return BuildShippingAddressItem(
          address: controller.addressesBloc.state.data[index],
          controller: controller,
        );
      },
      ),
    );
  }
}
