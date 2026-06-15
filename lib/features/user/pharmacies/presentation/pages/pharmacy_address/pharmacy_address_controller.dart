// ignore_for_file: use_build_context_synchronously

part of 'pharmacy_address_imports.dart';

class PharmacyAddressController {
  final GenericBloc<bool> refreshCubit = GenericBloc<bool>(true);

  final GenericBloc<InsuranceCompany?> selectedInsuranceCompany = GenericBloc<InsuranceCompany?>(null);

  final GenericBloc<File> prescriptionFileBloc = GenericBloc<File>(File(""));

  final GenericBloc<File> insuranceFileBloc = GenericBloc<File>(File(""));

  final GenericBloc<bool> conditionsCubit = GenericBloc<bool>(false);

  final List<AddressDomainModel> addressList = [];


  final PagingController<int, AddressDomainModel> pagingController =
      PagingController(firstPageKey: 1);

  final bool haveInsurance;
  final bool havePrescription;

  final Shop? pharmacy;

  AddressDomainModel? selectedAddress;


  PharmacyAddressController({required this.haveInsurance, required this.havePrescription, this.pharmacy}) {
    pagingController.addPageRequestListener((pageKey) {
      getPaginateAddress(pageKey, refresh: false);
      getPaginateAddress(pageKey);
    });
  }

  Future<void> getPaginateAddress(int page, {bool refresh = true}) async {
    GenericPaginateParams params = _paginateParams(page, refresh);
    var data = await GetAddresses().call(params);
    // addressList.addAll(data);
    // data = data.take(3).toList();
    var isLastPage = data.length < AppConstants.instance.paginationLimit;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(data);
    } else {
      var nextPageKey = page + 1;
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

  // void isSelectedAddressExistInList(List<AddressDomainModel> remoteData) {
  //   AddressDomainModel? selectedAddress =
  //       getIt<CartNavigateHelper>().selectedOrderAddress;
  //   if (selectedAddress != null) {
  //     try {
  //       remoteData
  //           .firstWhere((element) => element.id == selectedAddress.id)
  //           .selected = true;
  //     } catch (e) {
  //       // Not found in this page
  //     }
  //   }
  // }

  Future<void> onPickPrescriptionFile(
      GenericBloc<File> fileCubit, BuildContext context) async {
    var allowExtensions = [
      'pdf',
      'jpg',
      'jpeg',
      'png',
    ];
    var result = await getIt<Utilities>()
        .getAttachmentFile(FileType.image, allowedExtensions: allowExtensions);
    if (result != null) {
      fileCubit.onUpdateData(result);
    }
  }



  int getSelectedAddressId(){
    return selectedAddress!.id!;
  }


  Future<void> onPressProceed(BuildContext context) async {
    if(haveInsurance && selectedInsuranceCompany.state.data == null){
      CustomToast.showSimpleToast(msg: "Please select your insurance company first");
      return ;
    }
    if(haveInsurance && insuranceFileBloc.state.data.path.isEmpty){
      CustomToast.showSimpleToast(msg: "Please upload your insurance Document first");
      return ;
    }

    if(havePrescription && prescriptionFileBloc.state.data.path.isEmpty){
      CustomToast.showSimpleToast(msg: "Please upload prescription Document first");
      return ;
    }


    if (selectedAddress == null) {
      CustomToast.showSimpleToast(msg: "Please select you address first");
      return;
    }


    if(!conditionsCubit.state.data){
      CustomToast.showSimpleToast(
        msg: tr('acceptTerms'),
        type: ToastType.error,
      );
      return ;
    }

    var params = PharamcyShippingInfoParams(addressId: selectedAddress!.id!);
    var result = await GetPharmacyShippingInfo().call(params);
     bool isAnyDoNotHaveDelivery = result.any((element) => element.activeDelivery == false);
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
              if(haveInsurance && havePrescription){
                createOrderWithInsuranceAndPrescription(ctx,result);
              }else if(haveInsurance){
                createOrderWithInsurance(ctx, result);
              }else if(havePrescription){
                createOrderWithPrescription(ctx, result);
              }else{
                getCheckOutSummaryData(ctx, result);
              }
            },
          );
        },
      );
    }
  }


  Future<void> getCheckOutSummaryData(BuildContext context, List<PharmacyShippingDomainModel> data) async {
    PharmacyCheckoutParams params = _checkOutParams(data);
    final result = await GetCartSummary().call(params);
    if (result != null) {
      AutoRouter.of(context).push(PharmacyCheckOutRoute(
        shipping: result,
        checkoutParams: params,
      ));
    }
  }


  Future<void> createOrderWithPrescription(BuildContext context, List<PharmacyShippingDomainModel> data) async {
    PharmacyCreateOrderParams params = _createPrescriptionParams(data);
    var result = await CreatePharmacyOrder().call(params);
    if(result != null){
      AutoRouter.of(context).push( OrderSuccessRoute(summary: result));
    }
  }

  Future<void> createOrderWithInsurance(BuildContext context, List<PharmacyShippingDomainModel> data) async {
    PharmacyCreateOrderParams params = _createInsuranceParams(data);
    var result = await CreatePharmacyOrder().call(params);
    if(result != null){
      AutoRouter.of(context).push( OrderSuccessRoute(summary: result));
    }
  }

  Future<void> createOrderWithInsuranceAndPrescription(BuildContext context, List<PharmacyShippingDomainModel> data) async {
    PharmacyCreateOrderParams params = _createInsurancePrescriptionParams(data);
    var result = await CreatePharmacyOrder().call(params);
    if(result != null){
      AutoRouter.of(context).push( OrderSuccessRoute(summary: result));
    }
  }


  PharmacyCheckoutParams _checkOutParams(List<PharmacyShippingDomainModel> data){
    return PharmacyCheckoutParams(
        shippingInfo: _shippingData(data),
        addressId: selectedAddress!.id!,
    );
  }


  PharmacyCreateOrderParams _createPrescriptionParams(List<PharmacyShippingDomainModel> data){
    return  PharmacyCreateOrderParams(
         shippingInfo: _shippingData(data),
      addressId: selectedAddress?.id,
      prescriptionAttachments: [
        prescriptionFileBloc.state.data,
      ]
    );
  }


  PharmacyCreateOrderParams _createInsuranceParams(List<PharmacyShippingDomainModel> data){
    return  PharmacyCreateOrderParams(
        shippingInfo: _shippingData(data),
        addressId: selectedAddress?.id,
        insuranceCompanyId: selectedInsuranceCompany.state.data?.id,
        applyInsurance: haveInsurance == true ? 1 : 0,
        insuranceAttachments: [
          insuranceFileBloc.state.data,
        ],
    );
  }

  PharmacyCreateOrderParams _createInsurancePrescriptionParams(List<PharmacyShippingDomainModel> data){
    return  PharmacyCreateOrderParams(
        shippingInfo: _shippingData(data),
        addressId: selectedAddress?.id,
        applyInsurance: haveInsurance == true ? 1 : 0,
      insuranceCompanyId: selectedInsuranceCompany.state.data?.id,
      prescriptionAttachments: [
        prescriptionFileBloc.state.data,
      ],
        insuranceAttachments: [
          insuranceFileBloc.state.data,
        ],
    );
  }


  List<PharmacyShippingInfo> _shippingData(List<PharmacyShippingDomainModel> data) {
    return data.map((e) => PharmacyShippingInfo(
        ownerId: e.ownerId ?? 0,
        shippingType: DeliveryTypeEnum.delivery.getEnumValue(),
      )).toList();
  }



void onPressSelectInsuranceCompany(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
      return SupportedInsuranceBottomSheetWidget(
        insurance: pharmacy?.insuranceCompanies ?? [],
        enableSelect: true,
        onPressConfirm: (model) => onSelectInsuranceCompany(context,model),
        title: "Insurance Companies",
      );
    },);
}

void onSelectInsuranceCompany(BuildContext context, InsuranceCompany model){
    selectedInsuranceCompany.onUpdateData(model);
}



  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: AppConstants.instance.paginationLimit,
    );
  }
}
