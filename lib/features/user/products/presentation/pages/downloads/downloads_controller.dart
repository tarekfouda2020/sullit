part of 'downloads_import.dart';

class DownloadsController {
  final GenericBloc<List<ProductCard>> productsCubit = GenericBloc([]);

  void getDigitalProducts({bool refresh = true}) async {
    var result = await GetDigitalProducts().call(refresh);
    productsCubit.onUpdateData(result);
  }

  Future<void> downloadDigitalProduct(int id) async {
    await FileHelper().downloadFile(url: ApiNames.downloadDigitalProduct(id));
  }
}
