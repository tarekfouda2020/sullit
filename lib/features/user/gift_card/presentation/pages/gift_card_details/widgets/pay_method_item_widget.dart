part of 'gift_card_details_widgets_imports.dart';

class PayMethodItemWidget extends StatelessWidget {
  final PayMethodDomainModel model;
  final void Function() onTap;
  const PayMethodItemWidget({super.key, required this.model, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.only(bottom: 15),
        decoration: BoxDecoration(
            color: model.isSelected ? context.colors.primary.withOpacity(0.4) : context.colors.white,
            borderRadius: Dimens.borderRadius20PX,
            border:
                Border.all(color: model.isSelected ? context.colors.primary : context.colors.gray4.withOpacity(0.8))),
        child: Row(
          children: [
            CachedImage(
              url: model.image,
              width: 40,
              height: 40,
              haveRadius: false,
              boxShape: BoxShape.circle,
              fit: BoxFit.contain,
            ),
            Gaps.hGap15,
            Expanded(
              child: Text(
                model.title,
                style: AppTextStyle.s15_w500(color: context.colors.black),
              ),
            ),
            CustomRadioWidget(
              selected: model.isSelected,
            )
          ],
        ),
      ),
    );
  }
}
