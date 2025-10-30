part of 'cart_payment_widgets_imports.dart';

class AllowReplacementWidget extends StatelessWidget {
  final CartPaymentController controller;
  const AllowReplacementWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 18,top: 10,end: 24,bottom: 10),
      decoration: CustomDecoration(myBoxShadow: const [], boxBorder: Border.all(color: context.colors.borderColor)),
      child: Row(
        children: [
          Expanded(
            child: Text(
              tr("allowReplacement"),
              style: AppTextStyle.s12_w500(color: context.colors.black).copyWith(
                height: 1.3
              ),
            ),
          ),
          Gaps.hGap5,
          SwitchButtonWidget(
            switchBloc: controller.allowReplacementCubit,
            onToggle: (value) => controller.allowReplacementCubit.onUpdateData(!controller.allowReplacementCubit.state.data),
          )

        ],
      ),
    );
  }
}
