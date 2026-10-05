part of 'widgets_imports.dart';

class AiChatComposerWidget extends StatelessWidget {
  final AiChatController controller;

  const AiChatComposerWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.handoffBloc,
      builder: (context, handoff) {
        return Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            border: Border(
              top: BorderSide(color: context.colors.borderColor),
            ),
          ),
          padding: EdgeInsetsDirectional.fromSTEB(
            Dimens.dp12,
            Dimens.dp10,
            Dimens.dp12,
            Dimens.dp10 + MediaQuery.paddingOf(context).bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<GenericBloc<String?>, GenericState<String?>>(
                bloc: controller.errorBloc,
                builder: (context, error) {
                  if (error.data == null || error.data!.isEmpty) {
                    return Gaps.empty;
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: Dimens.dp8),
                    child: Text(
                      error.data ?? "",
                      style: AppTextStyle.s12_w400(color: context.colors.primary),
                    ),
                  );
                },
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(
                    child: GenericTextField(
                      fieldTypes: handoff.data
                          ? FieldTypes.disable
                          : FieldTypes.rich,
                      type: TextInputType.multiline,
                      action: TextInputAction.newline,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                      minLines: 1,
                      max: 2,
                      controller: controller.input,
                      hint: handoff.data
                          ? 'Chat is with support'
                          : 'Ask about a product, order, or cart',
                      validate: (_) => null,
                      onSubmit: () => controller.send(),
                    ),
                  ),
                  Gaps.hGap8,
                  Material(
                    color: handoff.data
                        ? context.colors.gray3
                        : context.colors.primary,
                    borderRadius: BorderRadius.circular(Dimens.dp12),
                    child: InkWell(
                      onTap: handoff.data ? null : () => controller.send(),
                      borderRadius: BorderRadius.circular(Dimens.dp12),
                      child: SizedBox(
                        width: Dimens.dp40,
                        height: Dimens.dp40,
                        child: Icon(
                          Icons.arrow_upward,
                          color: context.colors.white,
                          size: Dimens.dp20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
