part of 'home_main_widgets_imports.dart';

class AddressSheetWidget extends StatelessWidget {
  final HomeMainController controller;
  const AddressSheetWidget({super.key, required this.controller,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: const BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 26, bottom: 24, right: 33, left: 20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetHeaderWidget(
              title: "My Addresses",
            ),
            Gaps.vGap24,
             // AddressItemWidget(onTap:(){}, address:address ,),
            Gaps.vGap24,
            DefaultButton(
              margin: EdgeInsets.zero,
              title: tr("Confirm"),
              textColor: context.colors.white,
            ),
            Gaps.vGap12,
            DefaultButton(
              margin: EdgeInsets.zero,
              title: tr("+ Add New Address"),
              textColor: context.colors.primary,
              color: context.colors.white,
              borderColor: context.colors.primary,
              onTap: () {
                AutoRouter.of(context).push(const AddNewAddressRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
