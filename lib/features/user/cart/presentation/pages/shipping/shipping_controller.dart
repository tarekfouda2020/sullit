// ignore_for_file: use_build_context_synchronously

part of 'shipping_imports.dart';

class ShippingController {
  final GenericBloc<List<Address>> addressesBloc = GenericBloc([]);

  Future<void> getAddress({bool refresh = true}) async {
    return await GetAddresses().call(refresh).then(
      (value) {
        addressesBloc.onUpdateData(value);
      },
    );
  }

  void onSelectAddress(BuildContext context, Address address, bool? val) {
    var auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    for (var e in addressesBloc.state.data) {
      e.selected = false;
    }
    address.selected = !val!;
    addressesBloc.onUpdateData(addressesBloc.state.data);
  }

  void onAddNewAddress(BuildContext context) async {
    var result = await AutoRouter.of(context).push(const AddNewAddressRoute());
    if (result != null) {
      Address model = result as Address;
      addressesBloc.state.data.add(model);
      addressesBloc.onUpdateData(addressesBloc.state.data);
    }
  }

  void onActiveAddress(BuildContext context, Address address) async {
    var result = await AutoRouter.of(context)
        .push(ActiveAccountRoute(phone: address.phone!));
    if (result == true) {
      address.isActive = true;
      addressesBloc.onUpdateData(addressesBloc.state.data);
    }
  }

  Future<void> cartAddAddress(BuildContext context) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    var selectedList = addressesBloc.state.data
        .where((element) => element.selected == true)
        .toList();
    if (selectedList.isNotEmpty) {
      var data = await AddCartAddress().call(selectedList.first.id!);
      if (data) {
        CustomToast.showSimpleToast(
            msg: "The address has been added successfully");
        AutoRouter.of(context).push(const DeliveryRoute());
      }
    } else {
      CustomToast.showSimpleToast(msg: "Please Select address");
      return;
    }
  }
}
