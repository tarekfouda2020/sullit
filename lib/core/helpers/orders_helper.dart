
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/products/domain/use_cases/get_home.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_order_details.dart';

import '../../features/user/products/domain/models/home_domain_model.dart';

class OrdersHelper {

  OrdersHelper._();

  static final OrdersHelper instance = OrdersHelper._();


  final GenericBloc<HomeDomainModel?> homeCubit = GenericBloc(null);

  Future<void> getHome() async {
    var result = await GetHome().call(true);
    // result?.flashSales.add(FlashSale(id: 0, title: tr('coupons'), date: DateTime.now(), banner: ""));
    homeCubit.onUpdateData(result);
  }

  void addPurchasedEvent(int id)async{
    GenericParams params = _params(id, true);
    await GetOrderDetails()(params).then((value) {
      if(value != null){
       FacebookEventsHelper.instance.purchaseEvent(double.parse(value.total));
      }
    });
  }

  GenericParams _params(int id,bool refresh){
    return GenericParams(id: id,refresh:refresh );
  }


}