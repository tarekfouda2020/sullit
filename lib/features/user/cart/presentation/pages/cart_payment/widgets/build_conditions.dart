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
              return Checkbox(
                value: state.data,
                activeColor: Colors.grey.withOpacity(.3),
                visualDensity: const VisualDensity(horizontal: -2),
                onChanged: (val) =>
                    controller.conditionsCubit.onUpdateData(!state.data),
              );
            },
          ),
          Expanded(
            child: Wrap(
              children: [
                Text(
                  "I agree to the ",
                  style: AppTextStyle.s16_w400(color: context.colors.black),
                ),
                GestureDetector(
                  onTap: () => AutoRouter.of(context).push(const TermsRoute()),
                  child: Text(
                    "terms and conditions ,",
                    style: AppTextStyle.s16_w400(color: context.colors.primary),
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      AutoRouter.of(context).push(const ReturnPolicyRoute()),
                  child: Text(
                    "return policy & ",
                    style: AppTextStyle.s16_w400(color: context.colors.primary),
                  ),
                ),
                GestureDetector(
                  onTap: () =>
                      AutoRouter.of(context).push(const PrivacyRoute()),
                  child: Text(
                    "privacy policy",
                    style: AppTextStyle.s16_w400(color: context.colors.primary),
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
