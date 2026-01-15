// ignore_for_file: use_build_context_synchronously

part of 'delivery_tap_imports.dart';

class DeliveryTabController {

  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);

  final PagingController<int, AddressDomainModel> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;

  late final ReceivingMethodController receivingMethodController;


  DeliveryTabController(BuildContext context) {
    fetchData(context);
  }

  Future<void> fetchData(BuildContext context)async{
    getPaginateAddress(context,1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPaginateAddress(context,pageKey);
    });
  }

  Future<void> getPaginateAddress(BuildContext context, int page, {bool refresh = true}) async {
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

  Future<void> cartAddAddress(BuildContext context, AddressDomainModel address,{bool showLoader = true}) async {
    bool auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    var params = _addCartAddressParams(showLoader, address.id!);
    var data = await AddCartAddress().call(params);
    if (data) {
      CustomToast.showSimpleToast(
          msg: tr('addressAdded'),type: ToastType.success);
      updateAddressListWithSelectedAddress(address);
      /// get shipping info and update its cubit
      await receivingMethodController.pickupController.getShippingInfo(refresh: true);
      if(receivingMethodController.isDeliverySupportedInAllSellers() == false){
        receivingMethodController.changeTabCubit.onUpdateData(1);
        showDeliveryHintDialog(context);
      }
    }
    // else {
    //   CustomToast.showSimpleToast(msg: tr('pleaseSelAddress'));
    //   return;
    // }
  }


  void showDeliveryHintDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
      return   ShippingAlertWidget(title: '',receivingMethodController: receivingMethodController,);
    },);
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }


  Future<void> onSelectAddress(BuildContext context, AddressDomainModel address)async {
    var auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    if(address.selected==true){
      return ;
    }
    await cartAddAddress(context, address);
  }

  void updateAddressListWithSelectedAddress(AddressDomainModel address) {
    for (var e in pagingController.itemList!) {
      e.selected = false;
    }
    address.selected = true;
    refreshCubit.onUpdateData(true);
  }

  void onAddNewAddress(BuildContext context) async {
    var result = await AutoRouter.of(context).push(const AddNewAddressRoute());
    if (result != null) {
      AddressDomainModel model = result as AddressDomainModel;
      pagingController.itemList?.add(model);
      // pagingController.itemList=pagingController.itemList;
      refreshCubit.onUpdateData(true);
      getPaginateAddress(context,1);
    }
  }

  void onActiveAddress(BuildContext context, AddressDomainModel address) async {
    var result = await AutoRouter.of(context)
        .push(ActiveAccountRoute(phoneOrEmail: address.fullPhone!));
    if (result == true) {
      address.isActive = true;
      // pagingController.itemList = pagingController.itemList;
      refreshCubit.onUpdateData(true);
    }
  }

  AddCartAddressParams _addCartAddressParams(bool showLoader, int id) {
    return AddCartAddressParams(
      addressId: id,
     showLoader: showLoader
    );
  }




}
