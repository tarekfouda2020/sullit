part of 'widgets_imports.dart';

class PharmacyNormalDataWidget extends StatelessWidget {
  final OrderSummaryDomainModel data;
  const PharmacyNormalDataWidget({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Gaps.vGap20,
        Text(
          "Thank You For Your Order!",
          style: AppTextStyle.s20_w700(color: context.colors.black),
        ),
        Gaps.vGap10,
        RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            children: [
              TextSpan(
                text: data.sectionOrders?.first.soldBy ?? "",
                style: AppTextStyle.s14_w600(color: context.colors.green),
              ),
              TextSpan(
                text: " accepted your Prescription document successfully",
                style: AppTextStyle.s14_w400(color: context.colors.textColor)
                    .copyWith(height: 1.3),
              ),
            ],
          ),
        ),
        Gaps.vGap20,
        Text(
          "ORDER NUMBER",
          style: AppTextStyle.s14_w400(color: context.colors.textColor),
        ),
        Gaps.vGap10,
        Text(
          "#${data.sectionOrders?.first.code??""}",
          style: AppTextStyle.s22_w700(color: context.colors.black),
        ),
        Gaps.vGap20,
        Container(
          padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
          decoration: BoxDecoration(
            color: context.colors.lightGreen,
            borderRadius: Dimens.borderRadius30PX,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircleAvatar(
                radius: 3,
                backgroundColor: context.colors.green,
              ),
              Gaps.hGap5,
              Text(
                "Accepted",
                style: AppTextStyle.s14_w400(color: context.colors.green),
              ),
            ],
          ),
        ),
        Gaps.vGap20,
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.info, color: context.colors.redAccent),
            Gaps.hGap5,
            Expanded(
              child: Text(
                "select payment method to proceed to checkout , You must talk action within 24 hours or order will be automatically cancelled",
                textAlign: TextAlign.center,
                style: AppTextStyle.s16_w500(color: context.colors.primary)
                    .copyWith(height: 1.3),
              ),
            ),
          ],
        ),
        Gaps.vGap20,
        Divider(color: context.colors.greyWhite),
        Gaps.vGap20,
        _buildRow(context, "Date", data.summary?.orderDate ?? ""),
        Gaps.vGap10,
        _buildRow(context, "Total Items", data.getTotalItems().toString()),
        Gaps.vGap10,
        _buildRow(context, "Insurance Company", "Daman"),
        Gaps.vGap20,
      ],
    );
  }


  Widget _buildRow(BuildContext context, String title, String value) {
    return Row(
      spacing: 7,
      children: [
        Text(
          "$title :",
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
        Flexible(
          child: Text(
            value,
            style: AppTextStyle.s14_w600(color: context.colors.black),
          ),
        ),
      ],
    );
  }

}
