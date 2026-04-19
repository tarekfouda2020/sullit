// ignore_for_file: use_build_context_synchronously

part of 'pharmacy_address_imports.dart';

class PharmacyAddressController {
  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);

  final PagingController<int, AddressDomainModel> pagingController = PagingController(firstPageKey: 1);
  int pageSize = 12;

  PharmacyAddressController() {
    pagingController.addPageRequestListener((pageKey) {
      getPaginateAddress(pageKey, refresh: false);
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

  void onSelectAddress(BuildContext context, AddressDomainModel address) {
    var auth = context.read<DeviceCubit>().state.model.auth;
    if (!auth) {
      CustomToast.showAuthDialog(context);
      return;
    }
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
      pagingController.itemList!.add(model);
      refreshCubit.onUpdateData(true);
    }
  }

  void isSelectedAddressExistInList(List<AddressDomainModel> remoteData) {
    AddressDomainModel? selectedAddress = getIt<CartNavigateHelper>().selectedOrderAddress;
    if (selectedAddress != null) {
      try {
        remoteData.firstWhere((element) => element.id == selectedAddress.id).selected = true;
      } catch (e) {
        // Not found in this page
      }
    }
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: pageSize,
    );
  }
}
