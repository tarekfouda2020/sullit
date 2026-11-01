part of 'widgets_imports.dart';

class AiChatTypingDotWidget extends StatelessWidget {
  final double lift;

  const AiChatTypingDotWidget({super.key, required this.lift});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, -Dimens.dp4 * lift),
      child: Opacity(
        opacity: 0.35 + (0.65 * lift),
        child: Container(
          width: Dimens.dp6,
          height: Dimens.dp6,
          decoration: BoxDecoration(
            color: context.colors.gray5,
            shape: BoxShape.circle,
          ),
        ),
      ),
    );
  }
}
