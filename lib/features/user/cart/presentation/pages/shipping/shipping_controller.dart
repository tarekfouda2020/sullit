// ignore_for_file: use_build_context_synchronously

part of 'shipping_imports.dart';

class ShippingController {
  // final GenericBloc<List<Address>> addressesBloc = GenericBloc([]);

  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);

  final PagingController<int, Address> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;


  ShippingController(){
    pagingController.addPageRequestListener((pageKey) {
      getPaginateAddress(pageKey, refresh: false);
      getPaginateAddress(pageKey);
    });
  }



  Future<void> getPaginateAddress( int page, {bool refresh = true}) async {
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

  void onSelectAddress(BuildContext context, Address address,) {
    var auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    for (var e in pagingController.itemList!) {
      e.selected = false;
    }
    address.selected = true;
    // addressesBloc.onUpdateData(addressesBloc.state.data);
    refreshCubit.onUpdateData(true);

  }

  void onAddNewAddress(BuildContext context) async {
    var result = await AutoRouter.of(context).push(const AddNewAddressRoute());
    if (result != null) {
      Address model = result as Address;
      pagingController.itemList!.add(model);
      // addressesBloc.onUpdateData(addressesBloc.state.data);
      refreshCubit.onUpdateData(true);
    }
  }

  void onActiveAddress(BuildContext context, Address address,String phone) async {
    await SetResendVerifyCode().call(phone);
    var result =  AutoRouter.of(context)
        .push(ActiveAccountRoute(phoneOrEmail: address.fullPhone!));
    if (result == true) {
      address.isActive = true;
      // addressesBloc.onUpdateData(addressesBloc.state.data);
      refreshCubit.onUpdateData(true);
    }
  }

  Future<void> cartAddAddress(BuildContext context) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    var selectedList = pagingController.itemList!
        .where((element) => element.selected == true)
        .toList();
    if (selectedList.isNotEmpty) {
      var params = _addCartAddressParams(selectedList.first);
      var data = await AddCartAddress().call(params);
      if (data) {
        CustomToast.showSimpleToast(
            msg: tr('addressAdded'),type: ToastType.success);
        AutoRouter.of(context).push(const DeliveryRoute());
      }
    } else {
      CustomToast.showSimpleToast(msg: tr('pleaseSelAddress'));
      return;
    }
  }


  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }

  AddCartAddressParams _addCartAddressParams(Address address) {
    return AddCartAddressParams(
      addressId: address.id!,
      showLoader: true
    );
  }

}
