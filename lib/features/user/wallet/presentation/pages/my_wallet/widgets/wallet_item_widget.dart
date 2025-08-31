part of 'my_wallet_widgets_imports.dart';

class WalletItemWidget extends StatelessWidget {
  final WalletTransaction item;
  const WalletItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      padding: const EdgeInsetsDirectional.only(top: 16,bottom: 16,start: 19,end: 20),
      decoration: const CustomDecoration(
        myBoxShadow: [],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.typeLabel,
            style: AppTextStyle.s14_w600(
              color: context.colors.green,
            ),
          ),
          Gaps.vGap6,
          Text(
              item.amount.parseCurrency,
            // getIt<Utilities>().parseCurrency(item!.dmoun),
            style: AppTextStyle.s22_w600(
              color: context.colors.primary,
            ),
          ),
          Gaps.vGap4,
          Row(
            children: [
              Expanded(
                child: Text(
                  "${tr("transactionNo")} ${item.referenceNo}",
                  style: AppTextStyle.s12_w700(
                    color: context.colors.black,
                  ),
                ),
              ),
              Text(
                item.createdAt,
                style: AppTextStyle.s14_w400(
                  color: context.colors.textColor,
                ),
              )
            ],
          ),
        ],
      ),
      // child: ListTile(
      //   title: Text(
      //     // "",
      //     "dmoun",
      //     style: AppTextStyle.s14_w500(
      //       color: context.colors.black,
      //     ),
      //   ),
      //   trailing: Text(
      //     "approval",
      //     style: AppTextStyle.s12_w400(
      //       color: context.colors.primary,
      //     ),
      //   ),
      //   minLeadingWidth: 10.w,
      // ),
    );
  }

  String convertToTimeAgo(String dateString) {
    final DateFormat formatter = DateFormat("dd-MM-yyyy");
    final DateTime date = formatter.parse(dateString);
    return timeago.format(date, allowFromNow: true);
  }
}
