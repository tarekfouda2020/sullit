import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/widgets/custom_dropDown/CustomDropDown.dart';
import 'package:flutter_tdd/features/user/customers_products/domain/models/sort.dart';
import 'package:injectable/injectable.dart';

@injectable
class AddImageHelper {
  final GlobalKey<DropdownSearchState> serviceDropDownKey = GlobalKey();
  List<Sort> sortTypes = [
    Sort(title: 'Sort by newest', key: 'newest'),
    Sort(title: 'Sort by oldest', key: 'oldest'),
    Sort(title: 'Sort by smallest', key: 'smallest'),
    Sort(title: 'Sort by largest', key: 'largest'),
  ];
  Sort? selectedSort;

  void selectService(Sort? model) {
    selectedSort = model;
  }
}
