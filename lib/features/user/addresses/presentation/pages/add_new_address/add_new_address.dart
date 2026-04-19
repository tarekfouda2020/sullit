// ignore_for_file: library_private_types_in_public_api
part of 'add_new_address_imports.dart';

class AddNewAddress extends StatefulWidget {
  const AddNewAddress({Key? key}) : super(key: key);

  @override
  _AddNewAddressState createState() => _AddNewAddressState();
}

class _AddNewAddressState extends State<AddNewAddress> {
   final AddNewAddressController controller = AddNewAddressController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar:  DefaultAppBar(title: tr('addNewAddress')),
        body: BuildAddAddressForm(controller: controller),
        bottomNavigationBar: DefaultButton(
          title: tr('save'),
          onTap: () => controller.addNewAddress(context),
          height: 35.h,
          margin: EdgeInsets.only(right: 10,left: 10,bottom: Dimens.iosBottomDp(context),top: 10),
        ),
      ),
    );
  }
}
