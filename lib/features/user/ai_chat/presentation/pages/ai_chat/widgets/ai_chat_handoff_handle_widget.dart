part of 'widgets_imports.dart';

class AiChatHandoffHandleWidget extends StatelessWidget {
  const AiChatHandoffHandleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.dp40,
      height: Dimens.dp4,
      decoration: BoxDecoration(
        color: context.colors.gray3,
        borderRadius: BorderRadius.circular(Dimens.dp4),
      ),
    );
  }
}
