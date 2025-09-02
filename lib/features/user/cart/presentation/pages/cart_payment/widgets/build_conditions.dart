part of 'cart_payment_widgets_imports.dart';

class BuildConditions extends StatelessWidget {
  final CartPaymentController controller;

  const BuildConditions({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.dp10),
      child: Row(
        children: [
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: controller.conditionsCubit,
            builder: (_, state) {
              return SizedBox(
                width: 19, height: 19,
                child: Checkbox(
                  checkColor: context.colors.white,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  activeColor: context.colors.primary,
                  value: state.data,
                  onChanged: (value) => controller.conditionsCubit.onUpdateData(value!),
                  side: BorderSide(
                    color: context.colors.textColor,
                    width: 1,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: Dimens.borderRadius4PX,
                  ),
                ),
              );
            },
          ),
          Gaps.hGap4,
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
      ),
    );
  }
}
