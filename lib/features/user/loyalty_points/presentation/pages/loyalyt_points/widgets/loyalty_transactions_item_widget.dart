part of 'loyalty_points_widgets_imports.dart';

class LoyaltyTransactionItemWidget extends StatelessWidget {
  final LoyaltyPointsController controller;
  final TransactionsDomainModel model;
  const LoyaltyTransactionItemWidget({super.key, required this.controller, required this.model,});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 19, top: 16, bottom: 16, end: 24),
      margin: Dimens.marginBottom8,
      decoration: BoxDecoration(
          color: context.colors.white,
          border: Border.all(color: context.colors.borderColor,width: 1.3),
          borderRadius: Dimens.borderRadius12PX
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            model.type,
            style: AppTextStyle.s14_w600(color: model.transactionType().getColor(context)),
          ),
          Gaps.vGap8,
          Text(
            model.points.toString(),
            style: AppTextStyle.s22_w600(color: context.colors.primary),
          ),
          Gaps.vGap6,
          Row(
            children: [
              Expanded(
                child: Text(
                  "Transaction no : #${model.transactionsNo}",
                  style: AppTextStyle.s14_w700(color: context.colors.black),
                ),
              ),
              Text(
                model.createdAt,
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
            ],
          )
        ],
      ),
    );
  }
}
