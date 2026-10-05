part of 'widgets_imports.dart';

class AiChatSuggestionsWidget extends StatelessWidget {
  final AiChatController controller;

  const AiChatSuggestionsWidget({super.key, required this.controller});

  static const _prompts = [
    'Track my order',
    'Show my cart',
    'Find products',
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.handoffBloc,
      builder: (context, handoff) {
        if (handoff.data) return const SizedBox.shrink();
        return BlocBuilder<GenericBloc<List<AiChatMessage>>,
            GenericState<List<AiChatMessage>>>(
          bloc: controller.messagesBloc,
          builder: (context, messages) {
            return SizedBox(
              height: Dimens.dp40,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: const EdgeInsets.symmetric(horizontal: Dimens.dp16),
                itemCount: _prompts.length + 1,
                separatorBuilder: (_, __) => Gaps.hGap8,
                itemBuilder: (context, index) {
                  if (index == _prompts.length) {
                    return ActionChip(
                      label: Text(
                        'Talk to support',
                        style: AppTextStyle.s12_w500(color: context.colors.primary),
                      ),
                      backgroundColor: context.colors.lightPink,
                      side: BorderSide(color: context.colors.lightPink2),
                      onPressed: () => controller.requestHuman(context),
                    );
                  }
                  final prompt = _prompts[index];
                  return ActionChip(
                    label: Text(
                      prompt,
                      style: AppTextStyle.s12_w400(
                        color: context.colors.blackTextColor,
                      ),
                    ),
                    backgroundColor: context.colors.white,
                    side: BorderSide(color: context.colors.borderColor),
                    onPressed: () => controller.send(prompt),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
