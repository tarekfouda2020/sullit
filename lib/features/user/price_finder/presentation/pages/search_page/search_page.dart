part of 'search_imports.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: "Sahla Price Finder",
        bgColor: context.colors.white,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsetsDirectional.symmetric(
              horizontal: 20,
              vertical: 6,
            ),
            decoration: BoxDecoration(
              color: context.colors.white,
              border: Border(
                top: BorderSide(
                  color: context.colors.borderColor,
                  width: 0.5,
                ),
              ),
            ),
            child: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: 15,
                  color: context.colors.darkGreen,
                ),
                Gaps.hGap4,
                Text(
                  'Deliver to:',
                  style: AppTextStyle.s12_w600(
                    color: context.colors.black,
                  ),
                ),
                Gaps.hGap10,
                Text(
                  'Al Mushrif, Abu Dhabi',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyle.s12_w400(
                    color: context.colors.textColor,
                  ),
                ),
                Gaps.hGap6,
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  size: 20,
                  color: context.colors.textColor,
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 24,
              ),
              children: [


                const SearchHeaderWidget(),
                Gaps.vGap24,
                Column(
                  spacing: 12,
                  children: List.generate(
                    2,
                    (index) => const SearchResultItemWidget(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
