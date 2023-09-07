import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';

class OrderReview {
  final GenericBloc<int> ratingCubit;
  final TextEditingController rateComment;
final GlobalKey<FormState>formKey;
  OrderReview( {required this.ratingCubit, required this.rateComment,required this.formKey});
}
