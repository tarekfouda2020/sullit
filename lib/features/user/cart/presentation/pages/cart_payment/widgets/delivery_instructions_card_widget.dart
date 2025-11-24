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
          BlocBuilder<GenericBloc<List<DeliveryInstructionModel>>, GenericState<List<DeliveryInstructionModel>>>(
            bloc: controller.instructionsCubit,
            builder: (context, state) {
            if(state is GenericUpdateState){
              return Visibility(
                visible: state.data.isNotEmpty,
                replacement: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(tr("no_instructions"),
                    style: AppTextStyle.s15_w500(color: context.colors.primary),
                    )
                  ],
                ),
                child: SizedBox(
                  height: 130,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      spacing: 15,
                      children: List.generate(
                        state.data.length,
                            (index) {
                          return InstructionItemWidget(
                            model: state.data[index],
                            controller: controller,
                          );
                        },
                      ),
                    ),
                  ),
                ),
              );
            }else{
              return Row(
                children: List.generate(3, (index) {
                  return const BuildShimmerItem(
                    width: 94, height: 106,
                  );
                },),
              );
            }
            },
          ),
          Gaps.vGap20,
          Text(
            tr("notes_for_driver"),
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
            hint: tr("write_notes_here"),
            hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
          )
        ],
      ),
    );
  }
}
