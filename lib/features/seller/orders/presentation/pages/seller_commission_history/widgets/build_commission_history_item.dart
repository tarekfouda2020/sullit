part of 'seller_commission_history_widgets_imports.dart';

class BuildCommissionHistoryItem extends StatelessWidget {
  const BuildCommissionHistoryItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5,
        ).r,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5).r,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                  color: context.colors.greyWhite,
                  blurRadius: 1,
                  spreadRadius: 1)
            ]),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Admin Commission",
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Text(
                  "0",
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ],
            ),
            Divider(
              color: context.colors.greyWhite,
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Earning",
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Text(
                  "200 AED",
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ],
            ),
            Divider(
              color: context.colors.greyWhite,
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Code",
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Text(
                  "13425235-544574",
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ],
            ),
            Divider(
              color: context.colors.greyWhite,
              height: 20.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Created At",
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Text(
                  "23/12/2023 3:00 pm",
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
              ],
            ),
          ],
        ));
  }
}
