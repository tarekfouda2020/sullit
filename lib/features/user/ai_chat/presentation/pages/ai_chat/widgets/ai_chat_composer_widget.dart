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
          color: context.colors.white,
          padding: EdgeInsetsDirectional.fromSTEB(
            Dimens.dp12,
            Dimens.dp8,
            Dimens.dp12,
            Dimens.dp8 + MediaQuery.paddingOf(context).bottom,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<GenericBloc<String?>, GenericState<String?>>(
                bloc: controller.errorBloc,
                builder: (context, error) {
                  if (error.data == null || error.data!.isEmpty) {
                    return const SizedBox.shrink();
                  }
                  return Padding(
                    padding: const EdgeInsets.only(bottom: Dimens.dp8),
                    child: Text(
                      error.data!,
                      style: AppTextStyle.s12_w400(color: context.colors.primary),
                    ),
                  );
                },
              ),
              Row(
                children: [
                  Expanded(
                    child: GenericTextField(
                      fieldTypes: handoff.data
                          ? FieldTypes.disable
                          : FieldTypes.normal,
                      type: TextInputType.text,
                      action: TextInputAction.send,
                      controller: controller.input,
                      hint: handoff.data
                          ? 'Chat is with support'
                          : 'Ask about a product, order, or cart',
                      validate: (_) => null,
                      onSubmit: () => controller.send(),
                    ),
                  ),
                  Gaps.hGap8,
                  IconButton(
                    tooltip: 'Send',
                    onPressed: handoff.data ? null : () => controller.send(),
                    icon: Icon(Icons.send, color: context.colors.primary),
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
