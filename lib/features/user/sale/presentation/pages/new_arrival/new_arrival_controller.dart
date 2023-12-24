part of 'new_arrival_imports.dart';

class NewArrivalController {
  final GenericBloc<List<Product>> arrivalCubit = GenericBloc([]);

  void getArrival({bool refresh = true}) async {
    var result = await GetNewArrival().call(refresh);
    arrivalCubit.onUpdateData(result);
  }
  void onChangeFav(Product item) {
    item.isWishlist = !item.isWishlist!;
    arrivalCubit.onUpdateData(arrivalCubit.state.data);
  }
}
