import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'count_state.dart';

class CountCubit extends Cubit<CountState> {
  CountCubit() : super(const CountInitial());

  void onUpdateCount(int cartCount, int favCount) {
    emit(CountUpdate(cartCount, favCount));
  }
}
