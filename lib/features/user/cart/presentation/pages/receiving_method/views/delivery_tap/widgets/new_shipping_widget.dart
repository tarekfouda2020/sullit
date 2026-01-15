part of 'shipping_widgets_imports.dart';

class BuildNewShipping extends StatelessWidget {
  final DeliveryTabController controller;

  const BuildNewShipping({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
        title: "",
      onTap:()=> controller.onAddNewAddress(context),
      color: context.colors.white,
      borderColor: context.colors.primary,
      margin: EdgeInsets.zero,
      customLabel: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.add,color: context.colors.primary,size: 15.sp,),
          Gaps.hGap4,
          Text(tr('addNewAddress'),
          style: AppTextStyle.s18_w700(color: context.colors.primary),
          )
        ],
      ),
    );
  }
}
