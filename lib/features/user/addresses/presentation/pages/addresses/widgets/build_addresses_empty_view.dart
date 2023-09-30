part of 'addresses_widgets_imports.dart';

class BuildAddressesEmptyView extends StatelessWidget {
  const BuildAddressesEmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        tr("noAddresses"),
        style: AppTextStyle.s14_w600(
          color: context.colors.black,
        ),
      ),
    );
  }
}
