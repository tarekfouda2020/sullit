part of 'addresses_widgets_imports.dart';

class BuildAddAddressBtn extends StatelessWidget {
  final AddressesController controller;

  const BuildAddAddressBtn({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
        title: "",
      onTap: () => controller.checkAddAddress(context),
      customLabel: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add, color: context.colors.white, size: 15.sp),
          Gaps.hGap4,
          Text(tr("addNewAddress"),
          style: AppTextStyle.s18_w700(color: context.colors.white),
          )
        ],
      ),
    );
  }
}
