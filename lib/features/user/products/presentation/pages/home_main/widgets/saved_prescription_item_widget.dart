part of 'home_main_widgets_imports.dart';

class SavedPrescriptionItemWidget extends StatelessWidget {
  final String fileName;
  final String lastUse;
  final bool isImage;
  final String url;
  final bool selected;
  final VoidCallback onTap;

  const SavedPrescriptionItemWidget({
    super.key,
    required this.fileName,
    required this.lastUse,
    required this.isImage,
    required this.url,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: Dimens.paddingAll15PX,
        decoration: CustomDecoration(
          thisColor: context.colors.white,
          myBoxShadow: const [],
          boxBorder: Border.all(
            color: selected ? context.colors.primary : context.colors.borderColor,
          ),
        ),
        child: Row(
          children: [
            isImage
                ? CachedImage(
                    url: url,
                    width: Dimens.dp50,
                    height: Dimens.dp50,
                    fit: BoxFit.cover,
                    borderRadius: Dimens.borderRadius10PX,
                  )
                : SvgPicture.asset(
                    Res.pdfIcon,
                    width: Dimens.dp50,
                    height: Dimens.dp50,
                  ),
            Gaps.hGap10,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    fileName,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyle.s14_w600(color: context.colors.black),
                  ),
                  Gaps.vGap4,
                  Text(
                    tr('lastUse').replaceAll('{date}', lastUse),
                    style: AppTextStyle.s12_w400(color: context.colors.textColor),
                  ),
                ],
              ),
            ),
            Gaps.hGap10,
            CustomRadioWidget(selected: selected),
          ],
        ),
      ),
    );
  }
}
