part of 'widgets_imports.dart';

class InsuranceItemWidget extends StatelessWidget {
   ///Insurance
  final InsuranceCompany model;
  final bool enableSelect;
  final void Function()? onTap;
  const InsuranceItemWidget({super.key, required this.model,  this.enableSelect = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 72,
        margin: const EdgeInsets.only(bottom: Dimens.dp15),
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.dp15,
          vertical: 5,
        ),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius12PX,
            border: Border.all(color: context.colors.borderColor)
        ),
        child: Row(
          children: [
            CachedImage(
              url: model.logo,
              width: 80,
              height: 40,
              fit: BoxFit.cover,
            ),
            Gaps.hGap20,
            Expanded(
              child: Text(
                model.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.s16_w700(color: context.colors.black),
              ),
            ),
            if(enableSelect)
            CustomRadioWidget(selected: model.isSelected)
          ],
        ),
      ),
    );
  }
}
