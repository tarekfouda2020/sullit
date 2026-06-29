part of 'widgets_imports.dart';

class PharmacyBranchItemWidget extends StatelessWidget {
  final PharmacyBranchDomainModel model;

  const PharmacyBranchItemWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius15PX,
          color: model.isSelected
              ? context.colors.lightPrimary
              : context.colors.white,
          border: Border.all(
              color: model.isSelected
                  ? context.colors.primary
                  : context.colors.borderColor)),
      child: Row(
        spacing: 10,
        children: [
          CustomRadioWidget(selected: model.isSelected),
          Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.name,
                style: AppTextStyle.s16_w500(color: context.colors.textColor),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                spacing: 5,
                children: [
                  Text(
                    "${model.distanceKm} km",
                    style: AppTextStyle.s14_w500(color: context.colors.gray3),
                  ),
                  Icon(
                    Icons.location_on_outlined,
                    size: 10,
                    color: context.colors.primary,
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
