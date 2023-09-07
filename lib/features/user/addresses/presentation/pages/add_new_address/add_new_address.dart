// ignore_for_file: library_private_types_in_public_api
part of 'add_new_address_imports.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
  late AddNewAddressController controller;

  @override
  void initState() {
    controller = AddNewAddressController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: const DefaultAppBar(title: "Add New Address"),
        body: Column(
          children: [
            BuildAddAddressForm(controller: controller),
            DefaultButton(
              title: "Save",
              onTap: () => controller.addNewAddress(context),
              height: 35.h,
              borderRadius: Dimens.borderRadius10PX,
              margin: Dimens.paddingAll20PX,
            )
          ],
        ),
      ),
    );
  }
}
