part of 'widgets_imports.dart';

class PharmacyAddressButtonsWidget extends StatelessWidget {
  final PharmacyAddressController controller;

  const PharmacyAddressButtonsWidget({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
      decoration: BoxDecoration(
        color: context.colors.white,
      ),
      child: CustomBottomSafeAreaWidget(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 20,
          children: [
            // Terms & Conditions section removed from this page; stopped here
            // (commented, not deleted).
            // Row(
            //   children: [
            //     CustomCheckBoxWidget(
            //       changeValueCubit: controller.conditionsCubit,
            //     ),
            //     Expanded(
            //       child: Row(
            //         children: [
            //           Text(
            //             tr("agreeTo"),
            //             style: AppTextStyle.s14_w400(color: context.colors.textColor),
            //           ),
            //           Gaps.hGap5,
            //           GestureDetector(
            //             onTap: () => AutoRouter.of(context).push(const TermsRoute()),
            //             child: Text(
            //               tr('rulesAndConditions'),
            //               style: AppTextStyle.s14_w700(color: context.colors.black),
            //             ),
            //           ),
            //         ],
            //       ),
            //     )
            //   ],
            // ),
            DefaultButton(
              title:  controller.havePrescription
                  ?"Submit Order"
                  : tr("proceedToCheckout"),
              onTap: () => controller.onPressProceed(context),
              color: context.colors.primary,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              margin: EdgeInsets.zero,
            ),
          ],
        ),
      ),
    );
  }
}
