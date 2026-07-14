part of 'widgets_imports.dart';

class PrescriptionPickedFileWidget extends StatelessWidget {
  final Widget icon;
  final File file;
  final VoidCallback onRemove;

  const PrescriptionPickedFileWidget({
    super.key,
    required this.icon,
    required this.file,
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
                file.path.split('/').last,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.s14_w600(color: context.colors.black),
              ),
              Gaps.vGap4,
              Text(
                "Last Use : New attachment",
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
