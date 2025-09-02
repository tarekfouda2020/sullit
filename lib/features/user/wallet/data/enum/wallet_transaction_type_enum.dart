import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

enum WalletTransactionType {
  income,
  deduct;

  Color get color {
    switch(this){
      case WalletTransactionType.income:
        return AppColors.noContextInstance.green;
      case WalletTransactionType.deduct:
       return  AppColors.noContextInstance.darkRed;
    }
  }

  String get transactionSign {
    switch(this){
      case WalletTransactionType.income:
        return "+";
      case WalletTransactionType.deduct:
        return  "-";
    }
  }

}