part of 'track_order_imports.dart';

class TrackOrderController {
  final GenericBloc<Orders?> orderBloc = GenericBloc(null);
  final GenericBloc<bool> orderSummaryVisible = GenericBloc(false);
  final TextEditingController orderCodeController = TextEditingController();

  Future<void> getTrackOrder() async {
    getIt<LoadingHelper>().showLoadingDialog();
    var param = orderCodeController.text;
     GetTrackOrder().call(param).then(
          (value) {
            orderBloc.onUpdateData(value);
            getIt<LoadingHelper>().dismissDialog();
          }
        );
  }
}
