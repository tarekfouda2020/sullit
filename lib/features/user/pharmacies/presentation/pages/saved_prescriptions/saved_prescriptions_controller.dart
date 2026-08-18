part of 'saved_prescriptions_imports.dart';

class SavedPrescriptionsController {
  final PagingController<int, SavedPrescriptionModel> pagingController =
      PagingController(firstPageKey: 1);

  SavedPrescriptionsController() {
    getSavedPrescriptions(1, refresh: false);
    pagingController.addPageRequestListener((page) {
      getSavedPrescriptions(page);
    });
  }

  Future<void> getSavedPrescriptions(int page, {bool refresh = true}) async {
    GenericPaginateParams params = _paginateParams(page, refresh);
    var result = await GetSavedPrescriptions().call(params);
    var isLastPage = result.length < AppConstants.instance.paginationLimit;
    if (page == 1) {
      pagingController.itemList = [];
    }
    if (isLastPage) {
      pagingController.appendLastPage(result);
    } else {
      pagingController.appendPage(result, page + 1);
    }
  }

  GenericPaginateParams _paginateParams(int page, bool refresh) {
    return GenericPaginateParams(
      currentPage: page,
      refresh: refresh,
      pageSize: AppConstants.instance.paginationLimit,
    );
  }

  Future<void> onDelete(SavedPrescriptionModel model) async {
    var result = await DeleteSavedPrescription().call(model.id);
    if (result) {
      CustomToast.showSimpleToast(
        msg: "Prescription deleted successfully",
        type: ToastType.success,
      );
      pagingController.itemList?.remove(model);
      pagingController.itemList = [...?pagingController.itemList];
    }
  }

  List<String> get _allowedExtensions => ['jpg', 'jpeg', 'png', 'pdf'];

  Future<void> onPressAddNewPrescription(BuildContext context) async {
    File? file = await getIt<Utilities>().getAttachmentFile(
      FileType.image,
      allowedExtensions: _allowedExtensions,
    );
    if (file == null) return;
    var result = await UploadPrescription().call(UploadPrescriptionParams(file: file));
    if (result != null) {
      pagingController.itemList = [result, ...?pagingController.itemList];
      getSavedPrescriptions(1);
    }
  }

  void dispose() {
    pagingController.dispose();
  }
}
