part of 'confirmation_imports.dart';

class ConfirmationController {
  final GenericBloc<OrderSummaryDomainModel?> orderSummaryBloc = GenericBloc(null);

  ConfirmationController(OrderSummaryDomainModel? summary, int? id) {
    if (summary != null) {
      orderSummaryBloc.onUpdateData(summary);
    } else {
      getCombinedOrder(id!);
    }
  }

  Future<void> getCombinedOrder(int id) async {
    var data = await GetCombinedOrder().call(id);
    orderSummaryBloc.onUpdateData(data);
  }

  void navigateToHome(BuildContext context) =>
      AutoRouter.of(context).pushAndPopUntil(
        HomeRoute(index: 0),
        predicate: (route) => false,
      );
}
