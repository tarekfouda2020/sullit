part of 'widgets_imports.dart';

class BranchItemWidget extends StatelessWidget {
  final BranchDomainModel model;
  final VoidCallback onTap;

  const BranchItemWidget({super.key, required this.model, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: Dimens.dp10),
            padding: const EdgeInsets.all(Dimens.dp20),
            decoration: BoxDecoration(
              borderRadius: Dimens.borderRadius15PX,
              color: model.isSelected
                  ? context.colors.lightPrimary
                  : context.colors.white,
              border: Border.all(
                color: model.isSelected
                    ? context.colors.primary
                    : context.colors.borderColor,
                width: model.isSelected ? 2 : 1,
              ),
            ),
            child: Row(
              spacing: Dimens.dp10,
              children: [
                CustomRadioWidget(selected: model.isSelected),
                Expanded(
                  child: Column(
                    spacing: Dimens.dp10,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        model.name,
                        style: AppTextStyle.s16_w500(
                          color: model.isSelected
                              ? context.colors.primary
                              : context.colors.textColor,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        spacing: Dimens.dp5,
                        children: [
                          Text(
                            "${model.distanceKm} km",
                            style: AppTextStyle.s14_w500(
                              color: model.isSelected
                                  ? context.colors.primary
                                  : context.colors.black,
                            ),
                          ),
                          Icon(
                            Icons.location_on_outlined,
                            size: 10,
                            color: context.colors.primary,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          if (model.isDefault)
            Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: Dimens.dp8,
                  vertical: Dimens.dp4,
                ),
                decoration: BoxDecoration(
                  color: context.colors.primary,
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(15),
                    bottomLeft: Radius.circular(8),
                  ),
                ),
                child: Text(
                  'Default',
                  style: AppTextStyle.s10_w500(color: context.colors.white),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
