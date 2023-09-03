// ignore_for_file: use_build_context_synchronously

part of 'shipping_imports.dart';

class ShippingController {
  final GenericBloc<List<Address>> addressesBloc = GenericBloc([]);

  ShippingController() {
    getAddress();
  }

  Future<void> getAddress({bool refresh = true}) async {
    return await GetAddresses().call(refresh).then(
      (value) {
        addressesBloc.onUpdateData(value);
      },
    );
  }



  void onSelectAddress(Address address, bool? val, BuildContext context, int index) {
    var auth = context.read<DeviceCubit>().state.model.auth ;
    if(!auth){
      CustomToast.showAuthDialog(context);
      return ;
    }
    for (var e in addressesBloc.state.data) {
      e.selected = false;
    }
    address.selected = !val!;
    addressesBloc.onUpdateData(addressesBloc.state.data);
  }

  Future<void> cartAddAddress(BuildContext context) async {
    bool auth = context.read<DeviceCubit>().state.model.auth ;
    if(!auth){
      CustomToast.showAuthDialog(context);
      return;
    }
    if (addressesBloc.state.data
        .where((element) => element.selected == true)
        .isNotEmpty) {
      var data = await AddCartAddress().call(addressesBloc.state.data
          .where((element) => element.selected == true)
          .first
          .id!);
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
