part of 'track_order_widgets_imports.dart';

class BuildTrackOrderSummaryItem extends StatelessWidget {
  final String title, subTitle;

  const BuildTrackOrderSummaryItem(
      {Key? key, required this.title, required this.subTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7).r,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              title,
              style: AppTextStyle.s14_w500(color: context.colors.black),
            ),
          ),
          Expanded(
            child: Text(
              subTitle,
              style: AppTextStyle.s14_w400(color: context.colors.black),
            ),
          )
        ],
      ),
    );
  }
}
