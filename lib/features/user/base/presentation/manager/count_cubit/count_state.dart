part of 'count_cubit.dart';

abstract class CountState extends Equatable {
  final int cartCount;
  final int discount;

  const CountState({required this.cartCount, required this.discount});
}

class CountInitial extends CountState {
  const CountInitial() : super(cartCount: 0, discount: 0);

  @override
  List<Object> get props => [];
}

class CountUpdate extends CountState {
  const CountUpdate(int cartCount, int discount)
      : super(discount: discount, cartCount: cartCount);

  @override
  List<Object?> get props => [cartCount, discount];
}
