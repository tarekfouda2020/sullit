// ignore_for_file: use_build_context_synchronously

part of 'retrieve_order_imports.dart';

class RetrieveOrderController {
  final GlobalKey<FormState> formKey = GlobalKey();
  final TextEditingController reasonController = TextEditingController();
  final GenericBloc<Address?> addressCubit = GenericBloc(null);
  final GenericBloc<List<OrderDetails>> orderCubit = GenericBloc([]);
  late Orders orderModel;
  List<OrderDetails> selectedProducts = [];

  RetrieveOrderController(Orders model) {
    orderModel = model;
    orderModel.orderDetails.forEach((element) {
      element.qtyCubit = GenericBloc(element.quantity);
    });
    orderCubit.onUpdateData(orderModel.orderDetails);
  }

  void onItemSelected(OrderDetails model) {
    model.isSelected = !model.isSelected!;
    orderCubit.onUpdateData(orderCubit.state.data);
  }

  void increaseQty(OrderDetails model) {
    var qty = model.qtyCubit!.state.data;
    if (qty < model.quantity) {
      var newQty = qty + 1;
      model.qtyCubit?.onUpdateData(newQty);
    }
  }

  void decreaseQty(OrderDetails model) {
    if (model.quantity > 1) {
      var qty = model.qtyCubit!.state.data;
      if (qty > 1) {
        var newQty = qty - 1;
        model.qtyCubit?.onUpdateData(newQty);
      }
    }
  }

  void navigateToAddresses(BuildContext context) async {
    var result = await AutoRouter.of(context).push(const AddressesRoute());
    if (result != null) {
      Address addressModel = result as Address;
      addressCubit.onUpdateData(addressModel);
    }
  }

  void returnOrder(BuildContext context) async {
    if (formKey.currentState!.validate()) {
      var params = _returnParams();
      if (selectedProducts.isEmpty) {
        CustomToast.showSimpleToast(
            msg: "At least one product must be selected");
        return;
      }
      if (addressCubit.state.data == null) {
        CustomToast.showSimpleToast(msg: "Please choose an address");
        return;
      }
      print(">>>>${params.toJson()}");
      var data = await ReturnOrder().call(params);
      if (data) {
        CustomToast.showSimpleToast(
            msg: "Order has been returned successfully");
        AutoRouter.of(context).push(HomeRoute(index: 0));
      }
    }
  }

  ReturnOrderParams _returnParams() {
    selectedProducts = orderCubit.state.data
        .where((element) => element.isSelected == true)
        .toList();
    var productQty = selectedProducts
        .map((e) => {
              "product_id": "${e.product?.id}",
              "quantity": "${e.qtyCubit?.state.data}",
            })
        .toList();
    return ReturnOrderParams(
      reason: reasonController.text,
      addressId: addressCubit.state.data?.id,
      products: json.encode(productQty),
      orderId: orderModel.id,
    );
  }
}
