part of 'more_widgets_imports.dart';

class BuildMoreItem extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  final bool haveStatus;
  final bool? isSvg;
  final double? size;

  const BuildMoreItem(
      {Key? key,
      required this.title,
      required this.image,
      required this.onTap,
      this.haveStatus = false,
      this.isSvg = false,
      this.size = 35})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: context.colors.greyWhite,
              //offset: const Offset(10,10),
              blurRadius: 10,
              spreadRadius: 0.6,
            ),
          ],
          color: context.colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Gaps.vGap10,
            isSvg!
                ? SvgPicture.asset(
                    image,
                    width: size,
                    height: size,
                  )
                : Image.asset(
                    image,
                    width: size,
                    height: size,
                  ),
            Gaps.vGap10,
            Flexible(
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: AppTextStyle.s14_w500(color: context.colors.black).copyWith(),
              ),
            ),
            Gaps.vGap10,
          ],
        ),
      ),
    );
  }
}
