part of 'imports.dart';

class PopularSearchesItemWidget extends StatelessWidget {
  final String name;
  final String category;

  const PopularSearchesItemWidget({
    super.key,
    required this.name,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(
        maxWidth: 250,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: context.colors.borderColor,
        ),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s12_w400(
                color: context.colors.black,
              ),
            ),
          ),
          if (category.isNotEmpty) ...[
            Gaps.hGap12,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 3),
              decoration: BoxDecoration(
                color: context.colors.offWhite,
                borderRadius: BorderRadius.circular(6),
              ),
              child: Text(
                category,
                style: AppTextStyle.s10_w400(
                  color: context.colors.textColor,
                ),
              ),
            ),
          ],
        ],
      ),
    );
  }
}
