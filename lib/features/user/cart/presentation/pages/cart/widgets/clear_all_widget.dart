part of 'cart_widgets_imports.dart';

class CleaAllWidget extends StatelessWidget {
  final void Function() onPressClear;
  const CleaAllWidget({super.key, required this.onPressClear});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingHorizontal15PX,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            tr("cartProducts"),
            style: AppTextStyle.s16_w700(color: context.colors.black),
          ),
          GestureDetector(
            onTap: onPressClear,
            child: Row(
              children: [
                SvgPicture.asset(
                  Res.trashIcon,
                  width: 13,
                  height: 13,
                  colorFilter: ColorFilter.mode(
                      context.colors.redAccent, BlendMode.srcIn),
                ),
                Gaps.hGap4,
                Text(tr("clearAllCart"),
                    style:
                        AppTextStyle.s14_w400(color: context.colors.redAccent))
              ],
            ),
          )
        ],
      ),
    );
  }
}
