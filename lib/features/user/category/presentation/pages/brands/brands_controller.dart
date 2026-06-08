part of 'brands_imports.dart';

class BrandsController {
  final TextEditingController brandsSearchCtr = TextEditingController();

  final PagingController<int, BrandDomainModel> pagingController =
      PagingController(firstPageKey: 1);
  int pageSize = 10;

  BrandsController() {
    pagingController.addPageRequestListener(
      (pageKey) {
        getBrands(pageKey);
      },
    );
  }

  Future<void> getBrands(int page, {bool refresh = true}) async {
    var params = _brandsParams(pageSize, refresh, page);
    var data = await GetBrands().call(params);
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

  void onPressSearchBrand(BuildContext context) {
    // FocusScope.of(context).unfocus();
    pagingController.refresh();
    getBrands(1);
  }

  BrandsParams _brandsParams(int paginate, bool refresh, int page) {
    return BrandsParams(
        paginate: paginate,
        refresh: refresh,
        page: page,
        keyword: brandsSearchCtr.text);
  }
}
