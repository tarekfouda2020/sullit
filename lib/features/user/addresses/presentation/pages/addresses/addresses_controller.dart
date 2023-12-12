part of 'addresses_imports.dart';

class AddressesController {
  final GenericBloc<List<Address>> addressesBloc = GenericBloc([]);

  Future<void> getAddress({bool refresh = true}) async {
    return await GetAddresses().call(refresh).then(
      (value) {
        addressesBloc.onUpdateData(value);
      },
    );
  }

  Future<void> deleteAddress(Address model) async {
    var data = await SetDeleteAddress().call(model.id!);
    if (data) {
      CustomToast.showSimpleToast(
          msg: tr('addressDeleted'), type: ToastType.success);
      addressesBloc.state.data.remove(model);
      addressesBloc.onUpdateData(addressesBloc.state.data);
    }
  }
  void onActiveAddress(BuildContext context, Address address) async {
    var result = await AutoRouter.of(context)
        .push(ActiveAccountRoute(phoneOrEmail: address.fullPhone!));
    if (result == true) {
      address.isActive = true;
      addressesBloc.onUpdateData(addressesBloc.state.data);
    }
  }

  void checkAddAddress(BuildContext context) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    var result = await AutoRouter.of(context).push(const AddNewAddressRoute());
    if (result != null) {
      Address model = result as Address;
      addressesBloc.state.data.add(model);
      addressesBloc.onUpdateData(addressesBloc.state.data);
    }
  }

  void navigateToEditAddress(BuildContext context, Address model) async {
    var result = await AutoRouter.of(context).push(
      EditAddressRoute(address: model),
    );
    if (result != null) {
      model = result as Address;
      int index = addressesBloc.state.data.indexWhere((e) => e.id == model.id);
      addressesBloc.state.data[index] = model;
      var data = addressesBloc.state.data;
      addressesBloc.onUpdateData([]);
      addressesBloc.onUpdateData(data);
    }
  }

  void onSelectAddress(BuildContext context, Address address, bool? val) {
    for (var e in addressesBloc.state.data) {
      e.selected = false;
    }
    address.selected = !val!;
    addressesBloc.onUpdateData(addressesBloc.state.data);
    AutoRouter.of(context).pop(address);
  }
}
