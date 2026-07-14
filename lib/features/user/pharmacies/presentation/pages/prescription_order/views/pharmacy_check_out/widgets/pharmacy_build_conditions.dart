part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyBuildConditions extends StatelessWidget {
  final PharmacyCheckOutController controller;

  const PharmacyBuildConditions({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCheckBoxWidget(
          changeValueCubit: controller.conditionsCubit,
          onChange: (value) => controller.changeTermsStatus(value!),
        ),
        Expanded(
          child: Row(
            children: [
              Text(
                tr("agreeTo"),
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
              Gaps.hGap5,
              GestureDetector(
                onTap: () => AutoRouter.of(context).push(const TermsRoute()),
                child: Text(
                  tr('rulesAndConditions'),
                  style: AppTextStyle.s14_w700(color: context.colors.black),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
