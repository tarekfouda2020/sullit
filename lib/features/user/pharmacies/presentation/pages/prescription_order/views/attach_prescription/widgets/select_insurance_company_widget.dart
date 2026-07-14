part of 'widgets_imports.dart';

class SelectInsuranceCompanyWidget extends StatelessWidget {
  final AttachPrescriptionController controller;
  const SelectInsuranceCompanyWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.onPressSelectInsuranceCompany(context),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius30PX,
        ),
        child: BlocBuilder<GenericBloc<InsuranceCompany?>,
            GenericState<InsuranceCompany?>>(
          bloc: controller.selectedInsuranceCompany,
          builder: (context, state) {
            return Row(
              children: [
                Expanded(
                  child: Text(
                    state.data?.name ?? "Select Insurance Company",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: state.data?.name != null
                        ? AppTextStyle.s15_w500(color: context.colors.black)
                        : AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                ),
                Gaps.hGap15,
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 25,
                  color: context.colors.black,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}
