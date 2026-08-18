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
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Transform.scale(
            scale: 1.8,
            child: SvgPicture.asset(
              Res.pdfIcon,
              width: Dimens.dp50,
              height: Dimens.dp50,
            ),
          ),
        ) ,
        Gaps.hGap8,
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: Text(
              file.path.split('/').last,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s14_w500(color: context.colors.primary),
            ),
          ),
        ),
        onRemove != null
            ? GestureDetector(
                onTap: onRemove,
                child: Icon(
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
