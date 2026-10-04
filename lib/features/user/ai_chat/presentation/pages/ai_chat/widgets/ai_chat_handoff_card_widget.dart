part of 'widgets_imports.dart';

class AiChatHandoffCardWidget extends StatelessWidget {
  final AiChatPayload? payload;

  const AiChatHandoffCardWidget({super.key, required this.payload});

  @override
  Widget build(BuildContext context) {
    return AiChatSheetCardWidget(
      child: Text(
        'Support · ${payload?.statusLabel ?? payload?.status ?? ''}',
        style: AppTextStyle.s13_w500(color: context.colors.black),
      ),
    );
  }
}
