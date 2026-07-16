part of 'attach_prescription_imports.dart';

class AttachPrescriptionController {
  final Shop pharmacy;

  final GenericBloc<File> prescriptionFileCubit = GenericBloc<File>(File(""));
  final GenericBloc<File> emiratesIdCubit = GenericBloc<File>(File(""));

  final GenericBloc<bool> saveForLaterCubit = GenericBloc<bool>(true);
  final GenericBloc<bool> healthInsuranceCubit = GenericBloc<bool>(false);
  final GenericBloc<bool> agreeTermsCubit = GenericBloc<bool>(false);
  final GenericBloc<bool> allowReplacementCubit = GenericBloc<bool>(false);
  final GenericBloc<PharmacyOrderRequestedByModel?> requestedByCubit =
      GenericBloc<PharmacyOrderRequestedByModel?>(null);
  final GenericBloc<List<PharmacyOrderRequestedByModel>> requestedByOptionsCubit =
      GenericBloc<List<PharmacyOrderRequestedByModel>>([]);
  final TextEditingController notesController = TextEditingController();

  final GenericBloc<InsuranceCompany?> selectedInsuranceCompany =
      GenericBloc<InsuranceCompany?>(null);
  final GenericBloc<File> insuranceFileBloc = GenericBloc<File>(File(""));

  final GenericBloc<PharmacyOrderTermsModel?> termsCubit =
      GenericBloc<PharmacyOrderTermsModel?>(null);

  final PagingController<int, SavedPrescriptionModel> savedPrescriptionsPagingController =
      PagingController(firstPageKey: 1);
  final GenericBloc<bool> hasSavedPrescriptionsCubit = GenericBloc<bool>(false);
  final GenericBloc<SavedPrescriptionModel?> selectedSavedPrescriptionCubit =
      GenericBloc<SavedPrescriptionModel?>(null);

  AttachPrescriptionController({
    required this.pharmacy,
    File? initialPrescriptionFile,
    SavedPrescriptionModel? initialSavedPrescription,
  }) {
    if (initialPrescriptionFile != null) {
      prescriptionFileCubit.onUpdateData(initialPrescriptionFile);
    } else if (initialSavedPrescription != null) {
      selectedSavedPrescriptionCubit.onUpdateData(initialSavedPrescription);
    }
    getRequestedByOptions();
    getPharmacyOrderTerms();
    getSavedPrescriptions(1,refresh: false);
    savedPrescriptionsPagingController.addPageRequestListener((page) {
      getSavedPrescriptions(page);
    });
  }

  List<String> get _allowedExtensions => [  'jpg', 'jpeg', 'png'];

  Future<void> getSavedPrescriptions(int page, {bool refresh = true}) async {
    GenericPaginateParams params = _genericPaginateParams(page, refresh);
    var result = await GetSavedPrescriptions().call(params);
    var isLastPage = result.length < AppConstants.instance.paginationLimit;
    if (page == 1) {
      savedPrescriptionsPagingController.itemList = [];
    }
    if (isLastPage) {
      savedPrescriptionsPagingController.appendLastPage(result);
    } else {
      savedPrescriptionsPagingController.appendPage(result, page + 1);
    }
    hasSavedPrescriptionsCubit.onUpdateData(
      savedPrescriptionsPagingController.itemList?.isNotEmpty ?? false,
    );
  }

  GenericPaginateParams _genericPaginateParams(int page, bool refresh) {
    return GenericPaginateParams(
    currentPage: page,
    refresh: refresh,
    pageSize: AppConstants.instance.paginationLimit,
  );
  }

  Future<void> getRequestedByOptions() async {
    var result = await GetPharmacyOrderRequestedBy().call(NoParams());
    requestedByOptionsCubit.onUpdateData(result);
    if (result.isNotEmpty) {
      requestedByCubit.onUpdateData(result.first);
    }
  }

  Future<void> getPharmacyOrderTerms() async {
    var result = await GetPharmacyOrderTerms().call(NoParams());
    termsCubit.onUpdateData(result);
  }

  void onSelectSavedPrescription(SavedPrescriptionModel model) {
    selectedSavedPrescriptionCubit.onUpdateData(model);
    prescriptionFileCubit.onUpdateData(File(""));
  }

  void onRemoveSelectedSavedPrescription() {
    selectedSavedPrescriptionCubit.onUpdateData(null);
  }

  void onPressChooseFromSavedPrescriptions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return SavedPrescriptionsBottomSheetWidget(controller: this);
      },
    );
  }

  void onPressTermsAndConditions(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      builder: (context) {
        return PharmacyOrderTermsBottomSheetWidget(termsCubit: termsCubit);
      },
    );
  }


  Future<void> onPickPrescriptionFile() async {
    var result = await getIt<Utilities>().getAttachmentFile(
      FileType.image,
      allowedExtensions: _allowedExtensions,
    );
    if (result != null) {
      prescriptionFileCubit.onUpdateData(result);
      selectedSavedPrescriptionCubit.onUpdateData(null);
    }
  }


  Future<void> onPickEmiratesId() async {
    var result = await getIt<Utilities>().getAttachmentFile(
      FileType.image,
      allowedExtensions: _allowedExtensions,
    );
    if (result != null) {
      emiratesIdCubit.onUpdateData(result);
    }
  }

  void onRemovePrescriptionFile() {
    prescriptionFileCubit.onUpdateData(File(""));
  }

  void onRemoveEmiratesId() {
    emiratesIdCubit.onUpdateData(File(""));
  }

  Future<void> onPickInsuranceFile() async {
    var result = await getIt<Utilities>().getAttachmentFile(
      FileType.image,
      allowedExtensions: _allowedExtensions,
    );
    if (result != null) {
      insuranceFileBloc.onUpdateData(result);
    }
  }

  // Moved here from PharmacyAddressController.
  void onPressSelectInsuranceCompany(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return SupportedInsuranceBottomSheetWidget(
          insurance: pharmacy.insuranceCompanies ?? [],
          enableSelect: true,
          onPressConfirm: (model) => onSelectInsuranceCompany(context, model),
          title: "Insurance Companies",
        );
      },
    );
  }

  void onSelectInsuranceCompany(BuildContext context, InsuranceCompany model) {
    selectedInsuranceCompany.onUpdateData(model);
  }

  void onPressContinue(BuildContext context) {
    if (prescriptionFileCubit.state.data.path.isEmpty &&
        selectedSavedPrescriptionCubit.state.data == null) {
      CustomToast.showSimpleToast(
        msg: "Please attach your prescription first",
      );
      return;
    }
    if (emiratesIdCubit.state.data.path.isEmpty) {
      CustomToast.showSimpleToast(
        msg: "Please attach your personal ID image first",
      );
      return;
    }

    if (healthInsuranceCubit.state.data) {
      if (selectedInsuranceCompany.state.data == null) {
        CustomToast.showSimpleToast(
          msg: "Please select your insurance company first",
        );
        return;
      }

      if (insuranceFileBloc.state.data.path.isEmpty) {
        CustomToast.showSimpleToast(
          msg: "Please Upload your insurance image first",
        );
        return;
      }
    }

    if(requestedByCubit.state.data == null){
      CustomToast.showSimpleToast(
        msg: "Please select the type of prescription owner",
      );
      return;
    }

    if(agreeTermsCubit.state.data == false){
      CustomToast.showSimpleToast(
        msg: "You must accept the terms and conditions",
      );
      return;
    }

    AutoRouter.of(context).push(PharmacyAddressRoute(
      createOrderParams: _createOrderParams(),
      pharmacy: pharmacy,
      havePrescription: true
    ));

  }



  PharmacyCreateOrderParams _createOrderParams(){
    return PharmacyCreateOrderParams(
        shippingInfo: [],
        shopId: pharmacy.id!,
        applyInsurance: healthInsuranceCubit.state.data,
      additionalInfo: notesController.text,
      allowReplacement: allowReplacementCubit.state.data,
      requestedBy: requestedByCubit.state.data?.key,
      savedPrescriptions: saveForLaterCubit.state.data,
      insuranceCompanyId: selectedInsuranceCompany.state.data?.id,
      identityDocumentFile: emiratesIdCubit.state.data,
      prescriptionAttachments: _prescriptionAttachments(),
      prescriptionAttachmentIds: _prescriptionAttachmentIds(),
      insuranceAttachments: [
        emiratesIdCubit.state.data
      ],
    );
  }


  List<File>? _prescriptionAttachments() {
    File file = prescriptionFileCubit.state.data;
    if (file.path.isEmpty) return null;
    return [file];
  }


  List<int>? _prescriptionAttachmentIds() {
    var selected = selectedSavedPrescriptionCubit.state.data;
    if (selected == null) return null;
    return [selected.id];
  }

  void dispose() {
    notesController.dispose();
    savedPrescriptionsPagingController.dispose();
  }
}
