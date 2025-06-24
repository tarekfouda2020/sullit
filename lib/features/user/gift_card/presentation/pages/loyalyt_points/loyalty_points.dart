part  of 'loyalty_points_imports.dart';

class LoyaltyPoints extends StatefulWidget {
  const LoyaltyPoints({super.key});

  @override
  State<LoyaltyPoints> createState() => _LoyaltyPointsState();
}

class _LoyaltyPointsState extends State<LoyaltyPoints> {

  final LoyaltyPointsController controller = LoyaltyPointsController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Loyalty Points"),
      body: Padding(
        padding: Dimens.paddingHorizontal20PX,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const LoyaltyPointsInfo(),
            Text('Transactions',
            style: AppTextStyle.s20_w700(color: context.colors.black),
            ),
            Gaps.vGap12,
            Expanded(
              child: ListView.builder(
                itemCount: controller.pointsTypes.length,
                itemBuilder: (context, index) {
                  return LoyaltyTransactionItemWidget(
                    pointsType: controller.pointsTypes[index],
                    points: 243,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
