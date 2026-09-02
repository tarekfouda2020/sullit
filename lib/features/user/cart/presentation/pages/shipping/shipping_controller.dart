// ignore_for_file: use_build_context_synchronously

part of 'shipping_imports.dart';

class ShippingController {
  // final GenericBloc<List<Address>> addressesBloc = GenericBloc([]);

  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);

  final PagingController<int, AddressDomainModel> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 12;

  ShippingController() {
    getPaginateAddress(1, refresh: false);
    pagingController.addPageRequestListener((pageKey) {
      getPaginateAddress(pageKey);
    });
  }

  Future<void> getPaginateAddress(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data = await GetAddresses().call(params);
    final isLastPage = data.length < pageSize;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      isSelectedAddressExistInList(data);
      pagingController.appendLastPage(data);
    } else {
      final nextPageKey = page + 1;
      isSelectedAddressExistInList(data);
      pagingController.appendPage(data, nextPageKey);
    }
  }

  void onSelectAddress(
    BuildContext context,
    AddressDomainModel address,
  ) {
    var auth = context.isAuth;
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
      AddressDomainModel model = result as AddressDomainModel;
      pagingController.itemList!.add(model);
      // addressesBloc.onUpdateData(addressesBloc.state.data);
      refreshCubit.onUpdateData(true);
    }
  }

  void onActiveAddress(
      BuildContext context, AddressDomainModel address, String phone) async {
    await SetResendVerifyCode().call(phone);
    var result = await AutoRouter.of(context)
        .push(ActiveAccountRoute(phoneOrEmail: address.fullPhone!));
    if (result == true) {
      address.isActive = true;
      // addressesBloc.onUpdateData(addressesBloc.state.data);
      refreshCubit.onUpdateData(true);
    }
  }

  Future<void> cartAddAddress(BuildContext context) async {
    bool auth = context.isAuth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
    List<AddressDomainModel> selectedList = pagingController.itemList!
        .where((element) => element.selected == true)
        .toList();
    if (selectedList.isNotEmpty) {
      await _previewThenSetAddress(context, selectedList);
    } else {
      CustomToast.showSimpleToast(msg: tr('pleaseSelAddress'));
      return;
    }
  }

  Future<void> _previewThenSetAddress(
    BuildContext context,
    List<AddressDomainModel> selectedList,
  ) async {
    final addressId = selectedList.first.id;
    if (addressId == null) {
      CustomToast.showSimpleToast(msg: tr('pleaseSelAddress'));
      return;
    }
    final preview = await PreviewCartAddress().call(
      PreviewCartAddressParams(addressId: addressId),
    );
    if (preview == null) {
      return;
    }
    if (preview.hasChanges) {
      _showAddressChangesSheet(context, preview, selectedList);
      return;
    }
    await _setShippinAddress(selectedList);
  }

  void _showAddressChangesSheet(
    BuildContext context,
    CartPreviewAddress preview,
    List<AddressDomainModel> selectedList,
  ) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (sheetContext) => CartPreviewAddressSheet(
        preview: preview,
        onConfirm: () {
          Navigator.of(sheetContext).pop();
          _setShippinAddress(selectedList);
        },
        onChangeAddress: () => Navigator.of(sheetContext).pop(),
      ),
    );
  }

  Future<void> _setShippinAddress(List<AddressDomainModel> selectedList) async {
      AddressDomainModel selectedAddress = selectedList.first;
    AddCartAddressParams params = _addCartAddressParams(selectedAddress);
    bool data = await AddCartAddress().call(params);
    if (data) {
      getIt<CartNavigateHelper>().selectedOrderAddress = selectedAddress;
      CustomToast.showSimpleToast(
          msg: tr('addressAdded'), type: ToastType.success);
      getIt<CartNavigateHelper>()
          .setStep(CartNavigateHelper.deliveryStepIndex, force: true);
    }
  }

  void isSelectedAddressExistInList(List<AddressDomainModel> remoteData) {
    AddressDomainModel? selectedAddress =
        getIt<CartNavigateHelper>().selectedOrderAddress;
    if (selectedAddress != null) {
      remoteData
          .firstWhere((element) => element.id == selectedAddress.id)
          .selected = true;
    }
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }

  AddCartAddressParams _addCartAddressParams(AddressDomainModel address) {
    return AddCartAddressParams(addressId: address.id!, showLoader: true);
  }
}
