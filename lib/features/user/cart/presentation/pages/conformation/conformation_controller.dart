part of 'conformation_imports.dart';
class ConfirmationController {
  final GenericBloc<OrderSummary?> orderSummaryBloc = GenericBloc(null);

  ConfirmationController (OrderSummary? summary, int? id){
    if(summary != null){
      orderSummaryBloc.onUpdateData(summary);
    }else if (id != null){
      getCombinedOrder(id);
    }
  }



  Future<void> getCombinedOrder (int id)async{
    var data = await GetCombinedOrder().call(id);
    orderSummaryBloc.onUpdateData(data);
  }

}



