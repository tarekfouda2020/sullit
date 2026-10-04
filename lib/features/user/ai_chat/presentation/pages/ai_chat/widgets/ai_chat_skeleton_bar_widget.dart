part of 'widgets_imports.dart';

class AiChatSkeletonBarWidget extends StatelessWidget {
  final double widthFactor;
  final bool alignEnd;

  const AiChatSkeletonBarWidget({
    super.key,
    required this.widthFactor,
    required this.alignEnd,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: alignEnd
          ? AlignmentDirectional.centerEnd
          : AlignmentDirectional.centerStart,
      child: FractionallySizedBox(
        widthFactor: widthFactor,
        child: Container(
          height: 48,
          decoration: BoxDecoration(
            color: context.colors.gray3,
            borderRadius: BorderRadius.circular(Dimens.dp16),
          ),
        ),
      ),
    );
  }
}
