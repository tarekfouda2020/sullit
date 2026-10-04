part of 'widgets_imports.dart';

class AiChatMessageListWidget extends StatelessWidget {
  final AiChatController controller;

  const AiChatMessageListWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.loadingBloc,
      builder: (context, loading) {
        if (loading.data) {
          return const AiChatLoadingWidget();
        }
        return BlocBuilder<GenericBloc<List<AiChatMessage>>,
            GenericState<List<AiChatMessage>>>(
          bloc: controller.messagesBloc,
          builder: (context, state) {
            if (state.data.isEmpty) {
              return const AiChatEmptyWidget();
            }
            return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
              bloc: controller.sendingBloc,
              builder: (context, sending) {
                final count = state.data.length + (sending.data ? 1 : 0);
                return ListView.separated(
                  controller: controller.scroll,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Dimens.dp16,
                    vertical: Dimens.dp16,
                  ),
                  itemCount: count,
                  separatorBuilder: (_, __) => Gaps.vGap12,
                  itemBuilder: (context, index) {
                    if (index >= state.data.length) {
                      return const AiChatTypingWidget();
                    }
                    return AiChatBubbleWidget(
                      message: state.data[index],
                      controller: controller,
                    );
                  },
                );
              },
            );
          },
        );
      },
    );
  }
}
