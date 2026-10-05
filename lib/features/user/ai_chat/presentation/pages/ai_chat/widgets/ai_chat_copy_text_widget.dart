part of 'widgets_imports.dart';

class AiChatCopyTextWidget extends StatelessWidget {
  final String text;

  const AiChatCopyTextWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: 'Copy',
      visualDensity: VisualDensity.compact,
      padding: EdgeInsets.zero,
      constraints: const BoxConstraints(
        minWidth: Dimens.dp28,
        minHeight: Dimens.dp28,
      ),
      onPressed: () => getIt<Utilities>().copyToClipBoard(text),
      icon: Icon(
        Icons.copy_outlined,
        size: Dimens.dp16,
        color: context.colors.gray,
      ),
    );
  }
}
