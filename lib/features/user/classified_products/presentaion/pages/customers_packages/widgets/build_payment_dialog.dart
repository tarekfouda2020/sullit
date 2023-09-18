part of 'customers_packages_w_imports.dart';

class BuildPaymentDialog extends StatelessWidget {
  final CustomerPackagesController controller ;
  final int id ;
  const BuildPaymentDialog({Key? key, required this.controller, required this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          DropdownTextField<PaymentMethodDomainModel>(
            fillColor: context.colors.white,
            textSize: 16.sp,
            itemAsString: (model) => (model).name,
            showClearButton: false,
            title: "Select payment method",
            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            label: "Select payment method",
            dropKey: controller.paymentMethodsDropKey,
            useName: true,
            onFind: (data) => controller.getMethods(),
            fontSize:16.sp,
            selectedItem: controller.paymentMethod,
            radius: BorderRadius.circular(5.r),
            onChange: (value) => controller.selectMethod(context,value!,id),
            validate: (value) => validateDropDown(value),
          ),
        ],
      ),
    );
  }
}
