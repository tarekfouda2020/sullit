
import 'package:flutter_tdd/core/helpers/facebook_events_helper.dart';
import 'package:flutter_tdd/features/user/category/domain/entities/generic_params.dart';
import 'package:flutter_tdd/features/user/purchasing/domain/use_cases/get_order_details.dart';

class OrdersHelper {

  OrdersHelper._();

  static  OrdersHelper instance = OrdersHelper._();

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