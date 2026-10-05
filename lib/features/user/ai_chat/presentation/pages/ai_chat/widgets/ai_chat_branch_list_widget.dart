part of 'widgets_imports.dart';

class AiChatBranchListWidget extends StatelessWidget {
  final AiChatMessage message;
  final AiChatController controller;

  const AiChatBranchListWidget({
    super.key,
    required this.message,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    final payload = message.payload;
    if (payload is! BranchesPayload) return const SizedBox.shrink();
    final branches = payload.branches;
    return AiChatSheetCardWidget(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            payload.shop?.name ?? 'Branches',
            style: AppTextStyle.s14_w600(color: context.colors.black),
          ),
          Gaps.vGap8,
          ...branches.map(
            (branch) => Padding(
              padding: const EdgeInsets.only(bottom: Dimens.dp8),
              child: Text(
                '${branch.name ?? ''} · ${branch.isOpen == true ? 'Open' : 'Closed'}',
                style: AppTextStyle.s12_w400(color: context.colors.blackTextColor),
              ),
            ),
          ),
          if (payload.viewAll != null)
            TextButton(
              onPressed: () => controller.openViewAll(context, message),
              child: Text(
                'View all',
                style: AppTextStyle.s13_w500(color: context.colors.primary),
              ),
            ),
        ],
      ),
    );
  }
}
