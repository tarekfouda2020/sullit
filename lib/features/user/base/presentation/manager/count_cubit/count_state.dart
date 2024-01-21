part of 'count_cubit.dart';

abstract class CountState extends Equatable {
  final int cartCount;
  final int favCount;

  const CountState({required this.cartCount, required this.favCount});
}

class CountInitial extends CountState {
  const CountInitial() : super(cartCount: 0, favCount: 0);

  @override
  List<Object> get props => [];
}

class CountUpdate extends CountState {
  const CountUpdate(int cartCount, int favCount)
      : super(favCount: favCount, cartCount: cartCount);

  @override
  List<Object?> get props => [cartCount, favCount];
}
