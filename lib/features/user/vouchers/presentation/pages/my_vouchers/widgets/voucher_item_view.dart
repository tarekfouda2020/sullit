part of 'widgets_imports.dart';

class VoucherItemView extends StatelessWidget {
  const VoucherItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: context.colors.white,
        border: Border.all(color: context.colors.gray3, width: 1),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SvgPicture.asset(Res.vouchers, height: 22, width: 30),
          Gaps.hGap10,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Monthly Cash credit ",
                  style: AppTextStyle.s16_w700(color: context.colors.blackTextColor),
                ),
                Gaps.vGap10,
                DirhamPrice(
                  amount: "20.00",
                  currencyStyle: AppTextStyle.s20_w400(color: context.colors.primary),
                  textStyle: AppTextStyle.s20_w600(color: context.colors.primary),
                ),
                Gaps.vGap10,
                Text(
                  "Expire in 10 oct 2025",
                  style: AppTextStyle.s12_w300(color: context.colors.blackTextColor),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
