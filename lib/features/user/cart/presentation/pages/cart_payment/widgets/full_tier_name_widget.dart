part of 'cart_payment_widgets_imports.dart';


class FullTierNameWidget extends StatelessWidget {
  final String description;
  final String title;
  const FullTierNameWidget({super.key, required this.description, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: Dimens.sheetBorderRadius,
        color: context.colors.white
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gaps.vGap5,
          BottomSheetHeaderWidget(title: title),
          Gaps.vGap15,
          Row(
            children: [
              Image.asset(Res.shareHolderImage,
                width: 40,
                height: 40,
              ),
              Gaps.hGap15,
              Flexible(
                child: Text(description,
                style: AppTextStyle.s17_w600(color: context.colors.black),
                ),
              ),
            ],
          ),
          Gaps.vGap30
        ],
      ),
    );
  }
}
