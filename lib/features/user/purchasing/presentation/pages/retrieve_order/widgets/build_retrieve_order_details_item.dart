part of 'retrieve_order_widgets_imports.dart';

class BuildRetrieveOrderDetailsItem extends StatelessWidget {
  final String title;
  final String details;
  final bool useDirhamPrice;

  const BuildRetrieveOrderDetailsItem({
    super.key,
    required this.title,
    required this.details,
    this.useDirhamPrice = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical5PX,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.s13_w500(color: context.colors.black),
          ),
          Flexible(
            child: useDirhamPrice
                ? DirhamPrice(
                    amount: details,
                    textStyle:
                        AppTextStyle.s13_w400(color: context.colors.black),
                    currencyStyle:
                        AppTextStyle.s15_w400(color: context.colors.black),
                    currencyOffset: 0,
                  )
                : Text(
                    details,
                    style: AppTextStyle.s13_w400(color: context.colors.black),
                  ),
          ),
        ],
      ),
    );
  }
}
