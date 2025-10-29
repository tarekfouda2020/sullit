part of 'cart_payment_widgets_imports.dart';

class DeliveryInstructionsCardWidget extends StatelessWidget {
  final CartPaymentController controller;

  const DeliveryInstructionsCardWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingH17V13,
      decoration: BoxDecoration(
          color: context.colors.white, borderRadius: Dimens.borderRadius30PX),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocBuilder<GenericBloc<List<DeliveryInstructionModel>>,
              GenericState<List<DeliveryInstructionModel>>>(
            bloc: controller.instructionListCubit,
            builder: (context, state) {
              return Row(
                spacing: 15,
                children: List.generate(
                  state.data.length,
                  (index) {
                    return Expanded(
                      child: InstructionItemWidget(
                        model: state.data[index],
                        controller: controller,
                      ),
                    );
                  },
                ),
              );
            },
          ),
          Gaps.vGap20,
          Text(
            "Notes for driver ( optional )",
            style: AppTextStyle.s14_w500(color: context.colors.black),
          ),
          Gaps.vGap9,
          GenericTextField(
            controller: controller.driverNotesCtr,
            fieldTypes: FieldTypes.rich,
            margin: EdgeInsets.zero,
            type: TextInputType.multiline,
            action: TextInputAction.done,
            validate: (value) => value?.noValidate(),
            max: 4,
            fillColor: context.colors.customBackground,
            radius: Dimens.borderRadius20PX,
            hint: "Write notes here",
            hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
          )
        ],
      ),
    );
  }
}
