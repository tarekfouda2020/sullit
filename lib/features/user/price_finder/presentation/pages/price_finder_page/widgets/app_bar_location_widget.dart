part of 'imports.dart';

class AppBarLocationWidget extends StatelessWidget {
  const AppBarLocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 20, end: 20, bottom: 16),
      decoration: BoxDecoration(
        color: context.colors.white,
        border: Border(
          bottom: BorderSide(
            color: context.colors.borderColor,
            width: 1,
          ),
        ),
      ),
      child: Row(
        children: [
          Icon(
            Icons.location_on_outlined,
            size: 15,
            color: context.colors.darkGreen,
          ),
          Gaps.hGap4,
          Text(
            'Deliver to:',
            style: AppTextStyle.s12_w600(
              color: context.colors.black,
            ),
          ),
          Gaps.hGap10,
          Text(
            'Al Mushrif, Abu Dhabi',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.s12_w400(
              color: context.colors.textColor,
            ),
          ),
          Gaps.hGap6,
          Icon(
            Icons.keyboard_arrow_down_rounded,
            size: 15,
            color: context.colors.textColor,
          ),
        ],
      ),
    );
  }
}
