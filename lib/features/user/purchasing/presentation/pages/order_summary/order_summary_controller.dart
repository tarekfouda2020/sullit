// ignore_for_file: use_build_context_synchronously

part of 'order_summary_imports.dart';

class OrderSummaryController {
  final GenericBloc<Orders?> orderDetailsBloc = GenericBloc(null);
  late int orderId;

  OrderSummaryController(int id) {
    orderId = id;
    getOrderDetails(orderId, refresh: false);
    getOrderDetails(orderId);
  }

  Future<void> getOrderDetails(int id, {bool refresh = true}) async {
    var params = _genericParams(id, refresh);
    var result = await GetOrderDetails().call(params);
    result?.orderDetails.forEach(
      (element) => element.orderReview = OrderReview(
        rateComment: TextEditingController(),
        ratingCubit: GenericBloc(0),
        formKey: GlobalKey(),
      ),
    );
    orderDetailsBloc.onUpdateData(result);
  }

  void sendReview(BuildContext context, OrderDetails model) async {
    if (model.orderReview!.formKey.currentState!.validate()) {
      var params = _sendReviewParams(model);
      var result = await SendReview().call(params);
      if (result != null) {
        model.review = result;
        model.isAvailableReview = false;
        orderDetailsBloc.onUpdateData(orderDetailsBloc.state.data);
      }
      AutoRouter.of(context).pop();
    }
  }

  void onPayOrder(BuildContext context) async {
    var result = await PayOrder().call(orderDetailsBloc.state.data!.id);
    if (result.isNotEmpty) {
      AutoRouter.of(context).push(
        PaymentRoute(transactionUrl: result),
      );
    }
  }

  void showReviewDialog(BuildContext context, OrderDetails model) {
    showDialog(
      context: context,
      builder: (context) => BuildReviewDialog(
        controller: this,
        orderDetailsModel: model,
      ),
    );
  }

  GenericParams _genericParams(int orderId, bool refresh) {
    return GenericParams(
      id: orderId,
      refresh: refresh,
    );
  }

  SendReviewParams _sendReviewParams(OrderDetails model) {
    return SendReviewParams(
      orderId: orderId,
      productId: model.product?.id,
      rating: model.orderReview?.ratingCubit.state.data,
      comment: model.orderReview?.rateComment.text,
    );
  }
}
