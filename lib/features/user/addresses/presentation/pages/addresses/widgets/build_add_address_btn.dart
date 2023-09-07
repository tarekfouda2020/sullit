part of 'addresses_widgets_imports.dart';

class BuildAddAddressBtn extends StatelessWidget {
  final AddressesController controller;

  const BuildAddAddressBtn({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingAll10PX,
      child: FloatingActionButton(
        backgroundColor: context.colors.primary,
        elevation: 2,
        onPressed: () => controller.checkAddAddress(context),
        child: Icon(Icons.add, color: context.colors.white, size: 30.sp),
      ),
    );
  }
}
