import 'dart:ui';

import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

enum TrackOrderEnum{


  /// at first its Placed
  ///  Confirmed
  /// Picked Up
  /// On The Way in this step you can cancel it
  /// Delivered
  /// Cancelled


  placed,
  confirmed,
  pickedUp,
  onTheWay,
  cancelled,
  delivered;




 int getStepNumber(){
   switch(this){
     case placed: return 1;
     case confirmed: return 2;
     case pickedUp: return 3;
     case onTheWay: return 4;
     case delivered: return 5;
     case cancelled: return 5;
   }
 }


 Color getOrderStatusColor(){
   switch(this){
     case placed: return AppColors.noContextInstance.harvest;
     case confirmed: return AppColors.noContextInstance.green;
     case pickedUp: return AppColors.noContextInstance.green;
     case onTheWay: return AppColors.noContextInstance.green;
     case delivered: return AppColors.noContextInstance.green;
     case cancelled: return AppColors.noContextInstance.redAccent;
   }
 }

}