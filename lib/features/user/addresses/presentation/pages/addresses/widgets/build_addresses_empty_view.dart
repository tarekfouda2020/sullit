part of 'addresses_widgets_imports.dart';

class BuildAddressesEmptyView extends StatelessWidget {
  const BuildAddressesEmptyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "You have no addresses !",
        style: AppTextStyle.s14_w600(
          color: context.colors.black,
        ),
      ),
    );
  }
}
