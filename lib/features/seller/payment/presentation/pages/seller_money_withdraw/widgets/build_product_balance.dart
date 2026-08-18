part of 'seller_money_withdraw_widgets_imports.dart';

class BuildProductBalance extends StatelessWidget {
  const BuildProductBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp10),
      decoration: BoxDecoration(
        borderRadius: Dimens.borderRadius10PX,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap20,
          Text(
            "Pending Products Reselling Balance",
            style: AppTextStyle.s15_w700(
              color: context.colors.black,
            ),
          ),
          Gaps.line(context.colors.gray, 25),
          Table(
            columnWidths: const {
              0: FlexColumnWidth(1),
              1: FlexColumnWidth(2),
              2: FlexColumnWidth(2),
              3: FlexColumnWidth(2),
              4: FlexColumnWidth(2),
            },
            children: [
              TableRow(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: context.colors.greyWhite,
                      width: 1,
                    ),
                  ),
                ),
                children: const [
                  BuildTableHeader(title: "#"),
                  BuildTableHeader(title: "Order Code"),
                  BuildTableHeader(title: "Product Name"),
                  BuildTableHeader(title: "Amount"),
                  BuildTableHeader(title: "Transfer Date"),
                ],
              ),
              ...List.generate(
                3,
                (index) => const TableRow(
                  children: [
                    BuildTableItem(title: "1"),
                    BuildTableItem(title: "2324234 - 23242342"),
                    BuildTableItem(title: "name test"),
                    BuildTableItem(title: "444 د.إ"),
                    BuildTableItem(title: "20/2/2022 02:20 AM"),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
