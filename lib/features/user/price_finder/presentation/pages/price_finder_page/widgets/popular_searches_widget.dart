part of 'imports.dart';

class PopularSearchesWidget extends StatelessWidget {
  const PopularSearchesWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr('popularSearches'),
          style: AppTextStyle.s16_w700(color: context.colors.black),
        ),
        Gaps.vGap12,
        const Column(
          spacing: 8,
          children: [
            Row(
              spacing: 7,
              children: [
                PopularSearchesItemWidget(
                  name: 'Coca Cola',
                  category: 'Soft Drinks',
                ),
                PopularSearchesItemWidget(
                  name: 'Coca Cola',
                  category: 'Soft Drinks',
                ),
              ],
            ),
            Row(
              spacing: 7,
              children: [
                PopularSearchesItemWidget(
                  name: 'Coca Cola',
                  category: 'Soft Drinks',
                ),
                PopularSearchesItemWidget(
                  name: 'Coca Cola',
                  category: 'Soft Drinks',
                ),
              ],
            ),
            Row(
              spacing: 7,
              children: [
                PopularSearchesItemWidget(
                  name: 'Coca Cola',
                  category: 'Soft Drinks',
                ),
                PopularSearchesItemWidget(
                  name: 'Coca Cola',
                  category: 'Soft Drinks',
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
