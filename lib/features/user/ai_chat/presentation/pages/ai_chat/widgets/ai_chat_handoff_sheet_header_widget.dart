part of 'widgets_imports.dart';

class AiChatHandoffSheetHeaderWidget extends StatelessWidget {
  const AiChatHandoffSheetHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: Dimens.dp40,
          height: Dimens.dp40,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: context.colors.lightPink,
            borderRadius: BorderRadius.circular(Dimens.dp12),
          ),
          child: Icon(
            Icons.support_agent_outlined,
            color: context.colors.primary,
            size: Dimens.dp24,
          ),
        ),
        Gaps.hGap12,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Talk to support',
                style: AppTextStyle.s16_w600(color: context.colors.black),
              ),
              Gaps.vGap4,
              Text(
                'A person will take this chat. AI replies pause until support closes it.',
                style: AppTextStyle.s12_w400(color: context.colors.gray),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
