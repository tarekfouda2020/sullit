part of 'widgets_imports.dart';


class PharmacyOrderAttachmentWidget extends StatelessWidget {
  final String title;
  final String iconPath;
  final void Function() onTap;
  const PharmacyOrderAttachmentWidget({super.key, required this.title, required this.iconPath, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 6),
        decoration: BoxDecoration(
          color: context.colors.white,
          border: Border.all(color: context.colors.borderColor),
          borderRadius: Dimens.borderRadius10PX
        ),
        child: Row(
          children: [
          Container(
            width: 33,
            height: 33,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: context.colors.lightGreen2,
              borderRadius: Dimens.borderRadius8PX
            ),
            child: SvgPicture.asset(iconPath,
             width: 18,
              height: 18,
            ),
          ),
            Gaps.hGap10,
            Expanded(
              child: Text(title,
              style: AppTextStyle.s14_w500(color: context.colors.black),
              ),
            ),
           Icon(Icons.arrow_forward_rounded,
           size: 15,
           color: context.colors.gray6,
           )
          ],
        ),
      ),
    );
  }
}
