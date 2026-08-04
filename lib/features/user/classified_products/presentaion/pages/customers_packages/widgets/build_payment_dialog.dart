part of 'customers_packages_w_imports.dart';

class BuildPaymentDialog extends StatelessWidget {
  final CustomerPackagesController controller;
  final int id;
  const BuildPaymentDialog(
      {Key? key, required this.controller, required this.id})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropdownTextField<PaymentMethodDomainModel>(
            fillColor: context.colors.white,
            itemAsString: (model) => (model).name,
            title: tr('selectPaymentMethod'),
            margin: Dimens.paddingVertical10PX,
            label: tr('selectPaymentMethod'),
            dropKey: controller.paymentMethodsDropKey,
            useName: true,
            onFind: (data) => controller.getMethods(),
            selectedItem: controller.paymentMethod,
            onChange: (value) => controller.selectMethod(context, value, id),
            validate: (value) => validateDropDown(value),
          ),
        ],
      ),
    );
  }
}
