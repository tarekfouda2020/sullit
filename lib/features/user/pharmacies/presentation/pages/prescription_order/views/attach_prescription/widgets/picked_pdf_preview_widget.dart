part of 'widgets_imports.dart';

class PickedPdfPreviewWidget extends StatelessWidget {
  final File file;
  final void Function()? onRemove;

  const PickedPdfPreviewWidget({super.key, required this.file, this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.picture_as_pdf,
          color: context.colors.primary,
          size: Dimens.dp28,
        ),
        Gaps.hGap8,
        Expanded(
          child: Text(
            file.path.split('/').last,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.s14_w500(color: context.colors.primary),
          ),
        ),
        onRemove != null
            ? IconButton(
                onPressed: onRemove,
                icon: Icon(
                  Icons.close,
                  color: context.colors.redAccent,
                  size: Dimens.dp20,
                ),
              )
            : Icon(
                Icons.check_circle,
                color: context.colors.green,
                size: Dimens.dp20,
              ),
      ],
    );
  }
}
