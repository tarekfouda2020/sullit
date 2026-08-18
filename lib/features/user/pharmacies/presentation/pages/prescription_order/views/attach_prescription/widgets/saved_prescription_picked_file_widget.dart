part of 'widgets_imports.dart';

class SavedPrescriptionPickedFileWidget extends StatelessWidget {
  final Widget icon;
  final String fileName;
  final String lastUse;
  final VoidCallback onRemove;

  const SavedPrescriptionPickedFileWidget({
    super.key,
    required this.icon,
    required this.fileName,
    required this.lastUse,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        icon,
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
                "Last Use : $lastUse",
                style: AppTextStyle.s12_w400(color: context.colors.textColor),
              ),
            ],
          ),
        ),
        IconButton(
          onPressed: onRemove,
          icon: Icon(
            Icons.close,
            color: context.colors.redAccent,
          ),
        ),
      ],
    );
  }
}
