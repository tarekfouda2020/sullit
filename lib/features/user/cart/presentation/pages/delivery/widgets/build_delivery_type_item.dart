part of 'delivery_widgets_imports.dart';

class BuildDeliveryTypeItem extends StatelessWidget {
  final String title;
  final DeliveryTypeEnum value;
  final DeliveryTypeEnum groupValue;
  final Function(DeliveryTypeEnum?) onChanged;

  const BuildDeliveryTypeItem(
      {super.key,
      required this.title,
      required this.value,
      required this.groupValue,
      required this.onChanged});

  @override
  Widget build(BuildContext context) {
    Color borderColor =
        value == groupValue ? context.colors.primary : context.colors.offWhite;
    return Expanded(
      child: InkWell(
        onTap: () => onChanged(value),
        child: Container(
          padding: Dimens.paddingAll5PX,
          decoration: BoxDecoration(
            color: context.colors.white,
            border: Border.all(color: borderColor, width: 2),
            borderRadius: Dimens.borderRadius5PX,
          ),
          child: Row(
            children: [
              CustomRadioWidget(selected: value == groupValue,size: 18),
              Gaps.hGap10,
              Flexible(
                child: Text(
                  title,
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
