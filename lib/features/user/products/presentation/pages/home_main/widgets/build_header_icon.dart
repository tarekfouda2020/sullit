part of 'home_main_widgets_imports.dart';

class BuildHeaderIcon extends StatelessWidget {
  final String image;
  final Function() onTap;
  final int count;

  const BuildHeaderIcon(
      {super.key,
      required this.image,
      required this.onTap,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Container(
            height: 35,
            width: 35,
            padding: Dimens.paddingAll5PX,
            decoration: BoxDecoration(
              color: context.colors.bgIcon,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(image),
          ),
          Positioned(
            top: 5,
            child: Container(
              height: 15,
              width: 15,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: context.colors.primary,
                shape: BoxShape.circle,
              ),
              child: FittedBox(
                child: Text(
                  "$count",
                  style: AppTextStyle.s10_w400(color: context.colors.white)
                      .copyWith(height: 1.5),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
