part of 'widgets_imports.dart';

class PickupPharmacyBranchItemWidget extends StatelessWidget {
  final PharmacyBranchDomainModel model;
  final VoidCallback onTap;

  const PickupPharmacyBranchItemWidget({
    super.key,
    required this.model,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        padding: EdgeInsets.all(Dimens.dp16),
        margin: EdgeInsets.only(bottom: Dimens.dp12),
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius12PX,
          color: context.colors.white,
          border: Border.all(
            color: model.isSelected
                ? context.colors.primary
                : context.colors.gray3,
            width: model.isSelected ? 2 : 1,
          ),
        ),
        child: Row(
          spacing: Dimens.dp12,
          children: [
            Icon(
              Icons.location_on,
              color: context.colors.primary,
              size: 24,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: Dimens.dp4,
                children: [
                  Text(
                    model.name,
                    style: AppTextStyle.s16_w600(
                      color: context.colors.black,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    model.address,
                    style: AppTextStyle.s14_w400(
                      color: context.colors.textColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            CustomRadioWidget(selected: model.isSelected),
          ],
        ),
      ),
    );
  }
}
