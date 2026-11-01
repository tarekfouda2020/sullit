part of 'widgets_imports.dart';

class AiChatHandoffBannerWidget extends StatelessWidget {
  final AiChatController controller;

  const AiChatHandoffBannerWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.handoffBloc,
      builder: (context, state) {
        if (!state.data) return const SizedBox.shrink();
        return Container(
          width: double.infinity,
          color: context.colors.lightPink,
          padding: const EdgeInsets.symmetric(
            horizontal: Dimens.dp16,
            vertical: Dimens.dp10,
          ),
          child: Text(
            'A support agent has this chat. AI replies stay paused.',
            style: AppTextStyle.s12_w500(color: context.colors.black),
          ),
        );
      },
    );
  }
}
