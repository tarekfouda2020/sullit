import 'package:auto_route/annotations.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacies_list/pharmacies_list_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_categories/pharmacy_categories_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_details/pharmacy_details_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/pharmacy_order_details/pharmacy_order_details_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/prescription_order/views/attach_prescription/attach_prescription_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/prescription_order/views/order_success/order_success_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/prescription_order/views/pharmacy_address/pharmacy_address_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/prescription_order/views/pharmacy_cart/pharmacy_cart_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/prescription_order/views/pharmacy_check_out/pharmacy_check_out_imports.dart';
import 'package:flutter_tdd/features/user/pharmacies/presentation/pages/saved_prescriptions/saved_prescriptions_imports.dart';



const List<AutoRoute> pharmaciesRoute = [
  AdaptiveRoute(page: PharmaciesList),
  AdaptiveRoute(page: PharmacyDetails),
  AdaptiveRoute(page: PharmacyCart),
  AdaptiveRoute(page: PharmacyAddress),
  AdaptiveRoute(page: PharmacyCategories),
  AdaptiveRoute(page: OrderSuccess),
  AdaptiveRoute(page: PharmacyCheckOut),
  AdaptiveRoute(page: PharmacyOrderDetails),
  AdaptiveRoute(page: AttachPrescription),
  AdaptiveRoute(page: SavedPrescriptions),
];
