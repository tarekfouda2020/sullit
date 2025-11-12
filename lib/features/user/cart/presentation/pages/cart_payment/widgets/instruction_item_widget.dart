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
        padding: const EdgeInsetsDirectional.only(bottom: 12,start: 10,end: 15,top: 3),
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
            Padding(
              padding: const EdgeInsetsDirectional.only(start:8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CachedImage(url: model.image,
                    width: 30, height: 30,
                    fit: BoxFit.cover,
                    borderColor: Colors.transparent,
                    placeHolder: Gaps.empty,
                    bgColor: Colors.transparent,
                  ),
                  Gaps.vGap4,
                  SizedBox(
                    width: 62,
                    child: Text(
                      model.name,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 3,
                      style: AppTextStyle.s12_w400(
                        color: model.isSelect
                            ?context.colors.primary
                            :context.colors.gray8,
                      ).copyWith(height: 1.2),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
