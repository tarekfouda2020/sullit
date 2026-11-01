part of 'widgets_imports.dart';

class AiChatNewChatButtonWidget extends StatelessWidget {
  final AiChatController controller;

  const AiChatNewChatButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.newChatBloc,
      builder: (context, state) {
        if (state.data) {
          return const Padding(
            padding: EdgeInsets.all(Dimens.dp12),
            child: SizedBox(
              width: Dimens.dp20,
              height: Dimens.dp20,
              child: CircularProgressIndicator.adaptive(strokeWidth: 2),
            ),
          );
        }
        return IconButton(
          tooltip: 'New chat',
          onPressed: () => controller.endChat(context),
          icon: Icon(Icons.refresh, color: context.colors.black),
        );
      },
    );
  }
}
