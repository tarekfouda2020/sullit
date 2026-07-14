part of 'widgets_imports.dart';

class PickedImagePreviewWidget extends StatelessWidget {
  final File file;
  final double? height;
  final void Function()? onRemove;

  const PickedImagePreviewWidget({
    super.key,
    required this.file,
    this.height,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    final image = ClipRRect(
      borderRadius: Dimens.borderRadius10PX,
      child: Image.file(
        file,
        height: height ?? Dimens.dp150,
        width: double.infinity,
        fit: BoxFit.cover,
      ),
    );
    if (onRemove == null) return image;
    return Stack(
      children: [
        image,
        PositionedDirectional(
          top: Dimens.dp4,
          end: Dimens.dp4,
          child: CircleAvatar(
            backgroundColor: context.colors.white,
            radius: Dimens.dp16,
            child: IconButton(
              padding: EdgeInsets.zero,
              onPressed: onRemove,
              icon: Icon(
                Icons.close,
                color: context.colors.redAccent,
                size: Dimens.dp18,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
