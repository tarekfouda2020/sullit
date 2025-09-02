part of 'addresses_imports.dart';

class AddressesController {
  final GenericBloc<List<Address>> addressesBloc = GenericBloc([]);

  final PagingController<int, Address> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;

 late final bool isFromReturn;
  AddressesController(bool fromReturn) {
    pagingController.addPageRequestListener((pageKey) {
      getAddress(pageKey, refresh: false);
      getAddress(pageKey);
    });
    isFromReturn = fromReturn;
  }

  Future<void> getAddress(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data =await GetAddresses().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      pagingController.appendPage(data, nextPageKey);
    }
  }



  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
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
    if(isFromReturn){
      AutoRouter.of(context).pop(model);
      return ;
    }
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
