// ignore_for_file: use_build_context_synchronously

part of 'shipping_imports.dart';

class ShippingController {
  final GenericBloc<List<Address>> addressesBloc = GenericBloc([]);


  List<Address>? availableAddresses;

  Future getAddress(BuildContext context,{bool refresh = true}) async {
    return await GetAddresses().call(refresh).then(
      (value) {
      if(value.isNotEmpty){
        availableAddresses = value;
         availableAddresses?.first.selected = true;
         cartAddAddress(context, availableAddresses!.first,showLoader: false);
        // addressesBloc.onUpdateData(value);
      }else{
        addressesBloc.onUpdateData(value);
      }
      },
    );
  }


  void setDefaultAddressToCart(BuildContext context) {
    addressesBloc.state.data.first.selected = true;
    addressesBloc.onUpdateData(addressesBloc.state.data);
  }

  void onSelectAddress(BuildContext context, Address address) {
    var auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    if(address.selected==true){
      return ;
    }
    for (var e in addressesBloc.state.data) {
      e.selected = false;
    }
    address.selected = true;
    cartAddAddress(context, address);
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
    print(">>>>>>>${address.fullPhone}");
    var result = await AutoRouter.of(context)
        .push(ActiveAccountRoute(phoneOrEmail: address.fullPhone!));
    if (result == true) {
      address.isActive = true;
      addressesBloc.onUpdateData(addressesBloc.state.data);
    }
  }

  Future<void> cartAddAddress(BuildContext context, Address address,{bool showLoader = true}) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    var selectedAddress = availableAddresses!
        .where((element) => element.selected == true);
    if (selectedAddress.isNotEmpty) {
      var params = _addCartAddressParams(showLoader);
      var data = await AddCartAddress().call(params);
      if (data && showLoader) {
        CustomToast.showSimpleToast(
            msg: tr('addressAdded'),type: ToastType.success);
        addressesBloc.onUpdateData(availableAddresses!);
        // AutoRouter.of(context).push(const DeliveryRoute());
      }
    } else {
      CustomToast.showSimpleToast(msg: tr('pleaseSelAddress'));
      return;
    }
  }


  AddCartAddressParams _addCartAddressParams(bool showLoader) {
    var selectedAddress = availableAddresses!
        .firstWhere((element) => element.selected == true);
    return AddCartAddressParams(
      addressId: selectedAddress.id!,
     showLoader: showLoader
    );
  }


}
