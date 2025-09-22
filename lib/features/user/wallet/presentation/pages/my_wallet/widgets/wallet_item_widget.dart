part of 'my_wallet_widgets_imports.dart';

class WalletItemWidget extends StatelessWidget {
  final WalletTransaction item;
  const WalletItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical5PX,
      padding: const EdgeInsetsDirectional.only(top: 16,bottom: 16,start: 15,end: 15),
      decoration: const CustomDecoration(
        myBoxShadow: [],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.typeLabel.capitalize,
            style: AppTextStyle.s14_w600(
              color: item.transactionType().color,
            ),
          ),
          Gaps.vGap6,
          Row(
            children: [
              Text(
                item.transactionType().transactionSign,
                // getIt<Utilities>().parseCurrency(item!.dmoun),
                style: AppTextStyle.s22_w600(
                  color: item.transactionType().color,
                ),
              ),
              Gaps.hGap4,
              Text(
                  item.amount.parseCurrency,
                // getIt<Utilities>().parseCurrency(item!.dmoun),
                style: AppTextStyle.s22_w600(
                  color: context.colors.primary,
                ),
              ),
            ],
          ),
          Gaps.vGap4,
          Row(
            children: [
              Expanded(
                child: FittedBox(
                  child: Row(
                    children: [
                      Text(
                        "${tr("transactionNo")} ${item.referenceNo}",
                        style: AppTextStyle.s12_w700(
                          color: context.colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Gaps.hGap3,
              Text(
                item.createdAt,
                style: AppTextStyle.s13_w400(
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
}
