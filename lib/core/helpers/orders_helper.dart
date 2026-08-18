import 'dart:convert';
import 'dart:developer';

import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/local_storage_keys.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/core/helpers/router_helper.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/home_params.dart';
import 'package:flutter_tdd/features/user/products/domain/entities/home_params.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_home.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_product_details.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/models/track_order_model.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_order_details.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_tracking_history.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/user/products/domain/models/home_domain_model.dart';

class OrdersHelper {
  OrdersHelper._();

  static final OrdersHelper instance = OrdersHelper._();

  final GenericBloc<HomeDomainModel?> homeCubit = GenericBloc(null);

  final GenericBloc<TrackOrderModel?> trackOrderCubit =
      GenericBloc<TrackOrderModel?>(null);

  Set<int> _deletedOrdersIds = {};

  Future<Set<int>> getCurrentOrdersSavedIds() async {
    final prefs = await SharedPreferences.getInstance();
    final json = prefs.getString(LocalStorageKeys.trackOrderIds);
    if (json == null) return {};
    var ids = (jsonDecode(json) as List<dynamic>).map((e) => e as int).toSet();
    _deletedOrdersIds = ids;
    return ids;
  }


  bool _isCurrentOrderSavedInLocal(int id) {
    Set<int> ids = _deletedOrdersIds;
    bool isExist = ids.contains(id);
    return isExist;
  }


  Future<void> getHome({bool refresh = true, bool setLoading = true}) async {
    if(setLoading){
      homeCubit.onUpdateToInitState(null);
    }
    var result = await GetHome().call(HomeParams.fromLocation(refresh: refresh));
    result?.currentOrders.removeWhere((element) => _isCurrentOrderSavedInLocal(element.id));
    homeCubit.onUpdateData(result);
  }

  Future<void> getTrackOrder({required int id}) async {
    await GetTrackHistory().call(id ).then((value) {
      if (value != null) {
        trackOrderCubit.onUpdateData(value);
      }
    });
  }

  Future<void> updateOrderInHomeFromOrderDetails({required int id}) async {
    await GetOrderDetails().call(_orderDetailsParams(id) ).then((value) {
      if (value != null) {
        var homeData = homeCubit.state.data;
        if (homeData != null) {
          if (homeData.currentOrders.isEmpty) {
            return;
          }
          var theSameOrder = homeData.currentOrders
              .where(
                (element) => element.id == id,
              )
              .first;
          try {
            var index = homeData.currentOrders.indexOf(theSameOrder);
            if (theSameOrder.isCanceled) {
              homeData.currentOrders.removeAt(index);
            } else {
              homeData.currentOrders[index].deliveryStatusConst = value.deliveryStatusConst;
            }
            homeCubit.onUpdateData(homeData);
          } catch (e) {
            log("===>>>>>>error is $e  <<<<<====");
            getHome();
          }
        }
      }
    });
  }

  GenericParams _orderDetailsParams(int id) {
    return GenericParams(id: id);
  }

  void updateTrackOrderFromFcm(int orderId) {
    bool orderTrackPageOpened = getIt<RouterHelper>().trackOrderOpened(orderId);
    if (orderTrackPageOpened) {
      getTrackOrder(id: orderId);
    }
  }

  // void addPurchasedEvent(int id)async{
  //   GenericParams params = _params(id, true);
  //   await GetOrderDetails()(params).then((value) {
  //     if(value != null){
  //      FacebookEventsHelper.instance.purchaseEvent(double.parse(value.total));
  //     }
  //   });
  // }

  GenericParams _params(int id, bool refresh) {
    return GenericParams(id: id, refresh: refresh);
  }
}
