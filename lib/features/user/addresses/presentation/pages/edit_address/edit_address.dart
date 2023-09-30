part of 'edit_address_imports.dart';

class EditAddress extends StatefulWidget {
  final Address address;

  const EditAddress({Key? key, required this.address}) : super(key: key);

  @override
  State<EditAddress> createState() => _EditAddressState();
}

class _EditAddressState extends State<EditAddress> {
  late EditAddressController controller;

  @override
  void initState() {
    controller = EditAddressController(widget.address);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: tr('editNewAddress'),
      ),
      body: Column(
        children: [
          BuildEditAddressForm(
            controller: controller,
            address: widget.address,
          ),
          DefaultButton(
            title: tr('update'),
            onTap: () => controller.editAddress(context, widget.address),
            height: 35.h,
            borderRadius: Dimens.borderRadius10PX,
            margin: Dimens.paddingAll20PX,
          )
        ],
      ),
    );
  }
}
