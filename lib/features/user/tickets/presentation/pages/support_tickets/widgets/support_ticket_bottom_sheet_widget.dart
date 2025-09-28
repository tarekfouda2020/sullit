part of 'support_tickets_sheet_widgets_imports.dart';


class SupportTicketsSheetWidget extends StatelessWidget {
  final SupportTicketsController controller;
  const SupportTicketsSheetWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      margin: MediaQuery.of(context).viewInsets,
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: controller.formKey,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BottomSheetHeaderWidget(title: tr('createTicket')),
              Gaps.vGap24,
              BuildInputLabel(
                label: tr("subject"),
              ),
              GenericTextField(
                fieldTypes: FieldTypes.normal,
                fillColor: context.colors.white,
                type: TextInputType.text,
                action: TextInputAction.next,
                controller: controller.subjectController,
                validate: (value) => value?.validateEmpty(),
                hint: tr('enterSubject'),
                hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
                margin: const EdgeInsets.only(top: 7,bottom: 12),
                radius: Dimens.borderRadius40PX,
                contentPadding: Dimens.paddingH12V16,
                enableBorderColor: context.colors.white,
                focusBorderColor: context.colors.borderColor,
              ),
              BuildInputLabel(
                label: tr("description"),
              ),
              GenericTextField(
                fieldTypes: FieldTypes.rich,
                type: TextInputType.text,
                controller: controller.detailsController,
                action: TextInputAction.done,
                validate: (value) => value?.validateEmpty(),
                hint: tr('enterDescription'),
                hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
                margin: const EdgeInsets.only(top: 7,bottom: 12),
                radius: Dimens.borderRadius40PX,
                contentPadding: Dimens.paddingH12V16,
                enableBorderColor: context.colors.white,
                focusBorderColor: context.colors.borderColor,
                fillColor: context.colors.white,
              ),
              BuildAddTicketsImages(
                controller: controller,
              ),
              DefaultButton(
                  title: tr('send'),
                  height: 50,
                  margin: Dimens.paddingVertical10PX,
                  onTap: () => controller.createTicket(context)
              ),
            ],
          ),
        ),
      ),
    );
  }
}
