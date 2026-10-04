part of 'widgets_imports.dart';

class AiChatTypingWidget extends StatelessWidget {
  const AiChatTypingWidget({super.key});

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
          borderRadius: BorderRadius.circular(Dimens.dp16),
          border: Border.all(color: context.colors.borderColor),
        ),
        child: Text(
          '…',
          style: AppTextStyle.s16_w600(color: context.colors.gray),
        ),
      ),
    );
  }
}
