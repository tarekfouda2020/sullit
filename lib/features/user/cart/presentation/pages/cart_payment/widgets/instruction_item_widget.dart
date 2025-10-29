part of 'cart_payment_widgets_imports.dart';


class InstructionItemWidget extends StatelessWidget {
  final DeliveryInstructionModel model;
  final CartPaymentController controller;
  const InstructionItemWidget({super.key, required this.model, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => controller.selectInstructions(model),
      child: Container(
        padding: const EdgeInsets.only(bottom: 12,right: 12,left: 12,top: 3),
        decoration: BoxDecoration(
          borderRadius: Dimens.borderRadius15PX,
          border: Border.all(
            color: model.isSelect
                ?context.colors.primary
                :Colors.transparent
          ),
          color: model.isSelect
              ?context.colors.lightPrimary
              :context.colors.gray3
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CheckBoxWidget(
              value: model.isSelect,
              onChange: (value) => controller.selectInstructions(model),
            ),
           Column(
             children: [
               SvgPicture.asset(model.type.getIcon(),
                 colorFilter: ColorFilter.mode(model.isSelect
                     ?context.colors.primary
                     :context.colors.gray8
                     , BlendMode.srcIn),
               ),
               Gaps.vGap8,
               Text(model.type.getTitle(),
                 textAlign: TextAlign.center,
                 style: AppTextStyle.s12_w500(color: model.isSelect
                     ?context.colors.primary
                     :context.colors.gray8).copyWith(
                     height: 1.3
                 ),
               )
             ],
           )
          ],
        ),

      ),
    );
  }
}
