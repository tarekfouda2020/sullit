part of 'widgets_imports.dart';

class SavedPrescriptionCardWidget extends StatelessWidget {
  final SavedPrescriptionModel model;
  final VoidCallback onDelete;

  const SavedPrescriptionCardWidget({
    super.key,
    required this.model,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll15PX,
      margin: const EdgeInsets.only(bottom: Dimens.dp12),
      decoration: CustomDecoration(
        thisColor: context.colors.white,
        myBoxShadow: const [],
        radius: Dimens.borderRadius15PX,
      ),
      child: Row(
        children: [
          model.isImage
              ? CachedImage(
                  url: model.url,
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
                  model.fileName,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s14_w600(color: context.colors.black),
                ),
                Gaps.vGap4,
                if(model.lastUsedAt.isNotEmpty)
                Text(
                  "Last Use : ${model.lastUsedAt}",
                  style: AppTextStyle.s12_w400(color: context.colors.textColor),
                ),
              ],
            ),
          ),
          // Gaps.hGap10,
          // GestureDetector(
          //   onTap: onDelete,
          //   child: SvgPicture.asset(
          //     Res.trashIcon,
          //     width: Dimens.dp20,
          //     height: Dimens.dp20,
          //   ),
          // ),
        ],
      ),
    );
  }
}
