part of 'widgets_imports.dart';

class AiChatSheetCardWidget extends StatelessWidget {
  final Widget child;

  const AiChatSheetCardWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(Dimens.dp12),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(Dimens.dp12),
        border: Border.all(color: context.colors.borderColor),
      ),
      child: child,
    );
  }
}
