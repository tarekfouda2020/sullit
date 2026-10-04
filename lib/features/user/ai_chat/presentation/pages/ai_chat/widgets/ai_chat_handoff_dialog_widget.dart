part of 'widgets_imports.dart';

class AiChatHandoffSheet extends StatelessWidget {
  final AiChatController controller;

  const AiChatHandoffSheet({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: MediaQuery.viewInsetsOf(context).bottom),
      child: Container(
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: const BorderRadius.vertical(
            top: Radius.circular(Dimens.dp20),
          ),
        ),
        child: SafeArea(
          top: false,
          child: SingleChildScrollView(
            padding: const EdgeInsetsDirectional.fromSTEB(
              Dimens.dp20,
              Dimens.dp12,
              Dimens.dp20,
              Dimens.dp8,
            ),
            child: Form(
              key: controller.handoffFormKey,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Center(child: AiChatHandoffHandleWidget()),
                  Gaps.vGap16,
                  const AiChatHandoffSheetHeaderWidget(),
                  Gaps.vGap20,
                  GenericTextField(
                    fieldTypes: FieldTypes.normal,
                    type: TextInputType.name,
                    action: TextInputAction.next,
                    controller: controller.handoffName,
                    hint: 'Name',
                    margin: EdgeInsets.zero,
                    validate: (value) => value?.validateName(),
                  ),
                  Gaps.vGap12,
                  GenericTextField(
                    fieldTypes: FieldTypes.normal,
                    type: TextInputType.emailAddress,
                    action: TextInputAction.next,
                    controller: controller.handoffEmail,
                    hint: controller.requireHandoffEmail
                        ? 'Email'
                        : 'Email (optional)',
                    margin: EdgeInsets.zero,
                    validate: (value) => controller.requireHandoffEmail
                        ? value?.validateEmail()
                        : value?.validateEmailORNull(),
                  ),
                  Gaps.vGap12,
                  GenericTextField(
                    fieldTypes: FieldTypes.rich,
                    type: TextInputType.multiline,
                    action: TextInputAction.newline,
                    controller: controller.handoffReason,
                    max: 4,
                    hint: 'What do you need help with?',
                    radius: BorderRadius.circular(15),
                    margin: EdgeInsets.zero,
                    validate: (value) => value?.validateEmpty(),
                  ),
                  Gaps.vGap20,
                  DefaultButton(
                    title: 'Send to support',
                    height: Dimens.dp40,
                    margin: EdgeInsets.zero,
                    onTap: () => controller.submitHandoff(context),
                  ),
                  Gaps.vGap8,
                  DefaultButton(
                    title: 'Cancel',
                    height: Dimens.dp40,
                    margin: EdgeInsets.zero,
                    color: context.colors.white,
                    textColor: context.colors.black,
                    borderColor: context.colors.borderColor,
                    fontSize: 14,
                    onTap: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
