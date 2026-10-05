part of 'widgets_imports.dart';

class AiChatTypingWidget extends StatefulWidget {
  const AiChatTypingWidget({super.key});

  @override
  State<AiChatTypingWidget> createState() => _AiChatTypingWidgetState();
}

class _AiChatTypingWidgetState extends State<AiChatTypingWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1200),
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerStart,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: Dimens.dp16,
          vertical: Dimens.dp12,
        ),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: const BorderRadiusDirectional.only(
            topStart: Radius.circular(Dimens.dp16),
            topEnd: Radius.circular(Dimens.dp16),
            bottomStart: Radius.circular(Dimens.dp4),
            bottomEnd: Radius.circular(Dimens.dp16),
          ),
          border: Border.all(color: context.colors.borderColor),
        ),
        child: AnimatedBuilder(
          animation: _controller,
          builder: (context, _) {
            return Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for (var index = 0; index < 3; index++) ...[
                  if (index > 0) Gaps.hGap6,
                  AiChatTypingDotWidget(
                    lift: MediaQuery.disableAnimationsOf(context)
                        ? 1
                        : math.sin(
                            ((_controller.value + index / 3) % 1) * math.pi,
                          ),
                  ),
                ],
              ],
            );
          },
        ),
      ),
    );
  }
}
