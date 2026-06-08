part of 'widgets_imports.dart';

class SupportedInsuranceBottomSheetWidget extends StatelessWidget {
  final List<InsuranceCompany> insurance;

  const SupportedInsuranceBottomSheetWidget(
      {super.key, required this.insurance});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Dimens.dp20,
        vertical: Dimens.dp20,
      ),
      // margin: const EdgeInsets.only(top: kToolbarHeight+20),
      constraints: BoxConstraints(
          minHeight: 200,
          maxHeight: MediaQuery.sizeOf(context).height - (kToolbarHeight + 50)),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          BottomSheetHeaderWidget(
            title: tr("supported_health_insurance"),
          ),
          Gaps.vGap20,
          Flexible(
            child: ListView.builder(
              itemCount: insurance.length,
              itemBuilder: (context, index) {
                return InsuranceItemWidget(model: insurance[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
