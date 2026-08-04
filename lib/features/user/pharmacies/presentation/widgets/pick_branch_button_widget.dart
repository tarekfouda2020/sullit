part of 'widgets_imports.dart';

class PickBranchButtonWidget extends StatelessWidget {
  final String? selectedBranchName;
  final VoidCallback onTap;

  const PickBranchButtonWidget({
    super.key,
    required this.selectedBranchName,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 14),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: Dimens.borderRadius30PX,
          border: Border.all(color: context.colors.gray3),
        ),
        child: Row(
          children: [
            Expanded(
              child: Text(
                selectedBranchName ?? "Select your branch",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTextStyle.s15_w400(color: context.colors.black),
              ),
            ),
            Gaps.hGap10,
            Icon(
              Icons.keyboard_arrow_down,
              color: context.colors.black,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
