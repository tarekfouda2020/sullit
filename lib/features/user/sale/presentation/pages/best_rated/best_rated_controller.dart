part of 'best_rated_imports.dart';

class BestRatedController {
  final GenericBloc<List<Product>> bestRatedCubit = GenericBloc([]);

  void getBestRated({bool refresh = true}) async {
    var result = await GetBestRated().call(refresh);
    bestRatedCubit.onUpdateData(result);
  }
  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    bestRatedCubit.onUpdateData(bestRatedCubit.state.data);
  }
}
