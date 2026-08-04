part of 'confirmation_w_imports.dart';

class BuildProductPaddedText extends StatelessWidget {
  final String? text;
  final String? image;
  final TextAlign align;
  final Color color;

  const BuildProductPaddedText({
    Key? key,
    this.text,
    this.image,
    this.align = TextAlign.center,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
        horizontal: 5,
      ).r,
      child: Visibility(
        visible: image == null,
        replacement: CachedImage(
          height: 40.r,
          width: 40.r,
          url: image ?? "",
        ),
        child: Text(
          text ?? "",
          textAlign: align,
          style: AppTextStyle.s10_w400(
            color: color,
          ),
        ),
      ),
    );
  }
}
