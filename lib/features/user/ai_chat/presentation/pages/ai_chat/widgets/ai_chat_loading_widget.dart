part of 'widgets_imports.dart';

class AiChatLoadingWidget extends StatelessWidget {
  const AiChatLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(Dimens.dp16),
      children: const [
        AiChatSkeletonBarWidget(widthFactor: 0.55, alignEnd: false),
        SizedBox(height: Dimens.dp12),
        AiChatSkeletonBarWidget(widthFactor: 0.4, alignEnd: true),
        SizedBox(height: Dimens.dp12),
        AiChatSkeletonBarWidget(widthFactor: 0.7, alignEnd: false),
      ],
    );
  }
}
