part of 'widgets_imports.dart';

class AiChatHandoffCardWidget extends StatelessWidget {
  final AiChatPayload? payload;

  const AiChatHandoffCardWidget({super.key, required this.payload});

  @override
  Widget build(BuildContext context) {
    final detail = payload;
    final label = detail is DetailAiChatPayload
        ? detail.statusLabel ?? detail.status ?? ''
        : '';
    return AiChatSheetCardWidget(
      child: Text(
        'Support · $label',
        style: AppTextStyle.s13_w500(color: context.colors.black),
      ),
    );
  }
}
