part of 'track_order_widgets_imports.dart';

class BuildTrackOrderField extends StatelessWidget {
  final TrackOrderController controller;

  const BuildTrackOrderField({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenericTextField(
          fieldTypes: FieldTypes.normal,
          type: TextInputType.text,
          action: TextInputAction.done,
          validate: (value) => value?.validateEmpty(),
          hint: "${tr('orderCode')} :",
          controller: controller.orderCodeController,
          fillColor: context.colors.white,
          margin: Dimens.paddingVertical10PX,
        ),
        DefaultButton(
          title:  tr('trackOrder'),
          width: 120.w,
          height: 35.h,
          margin: Dimens.paddingVertical20PX,
          onTap: () => controller.getTrackOrder(),
        ),
      ],
    );
  }
}
