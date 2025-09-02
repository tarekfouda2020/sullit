part of 'membership_subscribe_widgets_imports.dart';

class AgreeTermsConditionsWidget extends StatelessWidget {
  final MembershipSubscribeController controller;

  const AgreeTermsConditionsWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.termCubit,
      builder: (context, state) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: 19, height: 19,
              child: Checkbox(
                checkColor: context.colors.white,
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                activeColor: context.colors.primary,
                value: state.data,
                onChanged: (value) => controller.termCubit.onUpdateData(value!),
                side: BorderSide(
                  color: context.colors.textColor,
                  width: 1,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: Dimens.borderRadius4PX,
                ),
              ),
            ),
            Gaps.hGap6,
            Row(
              children: [
                Text(
                  tr('agree'),
                  style: AppTextStyle.s14_w400(
                      color: context.colors.textColor),
                ),
                GestureDetector(
                  onTap: () => AutoRouter.of(context).push(const TermsRoute()),
                  child: Text(
                    tr('termsAndConditions'),
                    style:
                    AppTextStyle.s14_w700(color: context.colors.black),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
