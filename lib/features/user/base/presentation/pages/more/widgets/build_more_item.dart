part of 'more_widgets_imports.dart';

class BuildMoreItem extends StatelessWidget {
  final String title;
  final String image;
  final Function() onTap;
  final bool haveStatus;
  final bool? isSvg;
  const BuildMoreItem(
      {Key? key,
      required this.title,
        required this.image,
      required this.onTap,
      this.haveStatus = false,
        this.isSvg = false
      })
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
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
            isSvg!
                ?SvgPicture.asset(image)
                :Image.asset(
              image,
              width: 35,
              height: 35,
            ),
            Gaps.vGap10,
            Text(
              title,
              style: AppTextStyle.s14_w500(color: context.colors.black),
            ),
          ],
        ),
      ),
    );
  }
}
