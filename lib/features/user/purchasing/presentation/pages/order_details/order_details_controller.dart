part of 'order_details_imports.dart';


class OrderDetailsPageController {


  void reviewSheet(BuildContext context){
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      isScrollControlled: true,
      useRootNavigator: true,
      enableDrag: false,
      builder: (context) => ReviewProductSheetWidget(
        onRateProduct: (value ) {  }
      ),
    );
  }

}