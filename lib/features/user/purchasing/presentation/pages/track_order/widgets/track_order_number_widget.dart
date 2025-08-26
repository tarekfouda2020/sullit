part of 'track_order_widgets_imports.dart';

class TrackOrderNumberWidget extends StatelessWidget {
  final TrackOrderModel model;
  const TrackOrderNumberWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingVertical12PX,
      margin: const EdgeInsets.only(bottom: 17),
      decoration:  BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colors.gray3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("${tr("orderNo")} :",
          style: AppTextStyle.s18_w300(color: context.colors.textColor),
          ),
          Text(" ${model.code}",
            style: AppTextStyle.s18_w600(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
