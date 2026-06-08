// ignore_for_file: use_build_context_synchronously

part of 'pharmacy_address_imports.dart';

class PharmacyAddressController {
  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);

  final GenericBloc<File> prescriptionFileBloc = GenericBloc<File>(File(""));

  final GenericBloc<File> insuranceFileBloc = GenericBloc<File>(File(""));

  final List<AddressDomainModel> addressList = [];


  final PagingController<int, AddressDomainModel> pagingController =
      PagingController(firstPageKey: 1);

  final bool haveInsurance;
  final bool havePrescription;

  AddressDomainModel? selectedAddress;


  PharmacyAddressController({required this.haveInsurance, required this.havePrescription}) {
    pagingController.addPageRequestListener((pageKey) {
      getPaginateAddress(pageKey, refresh: false);
      getPaginateAddress(pageKey);
    });
  }

  Future<void> getPaginateAddress(int page, {bool refresh = true}) async {
    var params = _paginateParams(page, refresh);
    var data = await GetAddresses().call(params);
    // addressList.addAll(data);
    // data = data.take(3).toList();
    final isLastPage = data.length < AppConstants.instance.paginationLimit;
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
    selectedAddress = address;
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
    AddressDomainModel? selectedAddress =
        getIt<CartNavigateHelper>().selectedOrderAddress;
    if (selectedAddress != null) {
      try {
        remoteData
            .firstWhere((element) => element.id == selectedAddress.id)
            .selected = true;
      } catch (e) {
        // Not found in this page
      }
    }
  }

  Future<void> onPickPrescriptionFile(
      GenericBloc<File> fileCubit, BuildContext context) async {
    var allowExtensions = [
      'pdf',
      'jpg',
      'jpeg',
      'png',
    ];
    var result = await getIt<Utilities>()
        .getAttachmentFile(FileType.custom, allowedExtensions: allowExtensions);
    if (result != null) {
      fileCubit.onUpdateData(result);
    }
  }



  int getSelectedAddressId(){
    return selectedAddress!.id!;
  }


  Future<void> onPressProceed(BuildContext context) async {
    if (selectedAddress == null) {
      CustomToast.showSimpleToast(msg: "Please select you address first");
      return;
    }

    var params = PharamcyShippingInfoParams(addressId: selectedAddress!.id!);
    var result = await GetPharmacyShippingInfo().call(params);
     bool isAnyDoNotHaveDelivery = result.any((element) => element.activeDelivery = false);
     if(isAnyDoNotHaveDelivery){
       final inactiveItem = result.firstWhere(
             (element) => element.activeDelivery == false,
       );
       CustomToast.showSimpleToast(
         msg: inactiveItem.deliveryMessage ?? "",
       );
     } else {
      final transitInMsg = result.isNotEmpty ? (result.first.delivery?.transitIn ?? "") : "";
      showDialog(
        context: context,
        builder: (context) {
          return PharmacyShippingDialog(
            message: transitInMsg,
            onContinue: () {
              Navigator.pop(context);
              BuildContext ctx = getIt<GlobalContext>().context();
              getCheckOutSummaryData(ctx, result);
            },
          );
        },
      );
    }
  }



  Future<void> getCheckOutSummaryData(BuildContext context, List<PharmacyShippingDomainModel> data) async {
    var params = checkOutParams(data);
    print("===>>>>> json data ${params.toJson()}<<<<<");
    final result = await GetCartSummary().call(params);
    if (result != null) {
      AutoRouter.of(context).push(PharmacyCheckOutRoute(
        shipping: result,
        checkoutParams: params,
      ));
    }
  }


  PharmacyCheckoutParams checkOutParams(List<PharmacyShippingDomainModel> data){
    return PharmacyCheckoutParams(
        shippingInfo: _shippingData(data),
        addressId: selectedAddress!.id!,
    );
  }

  List<PharmacyShippingInfo> _shippingData(List<PharmacyShippingDomainModel> data) {
    return data.map((e) => PharmacyShippingInfo(
        ownerId: e.ownerId ?? 0,
        shippingType: DeliveryTypeEnum.delivery.getEnumValue(),
      )).toList();
  }





  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: AppConstants.instance.paginationLimit,
    );
  }
}
