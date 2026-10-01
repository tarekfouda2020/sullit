part of 'imports.dart';

class SearchResultItemWidget extends StatelessWidget {
  const SearchResultItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsGeometry.only(right: 20, left: 20, bottom: 6, top: 20),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: context.colors.borderColor),
      ),
      child: Column(
        spacing: 20,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedImage(
                url: "https://m.media-amazon.com/images/I/71TdTgvOwsL._AC_UF894,1000_QL80_.jpg",
                height: 52,
                width: 52,
                borderRadius: BorderRadius.circular(12),
              ),
              Gaps.hGap13,
              Column(
                spacing: 10,
                children: [
                  Text(
                    "Coca-Cola Original",
                    style: AppTextStyle.s18_w700(color: context.colors.black),
                  ),
                  Text(
                    "1L Bottle • Soft Drinks",
                    style: AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                  Text(
                    "Barcode:5449000014528",
                    style: AppTextStyle.s12_w400(color: context.colors.textColor),
                  ),
                ],
              ),
              const Spacer(),
              Column(
                spacing: 10,
                children: [
                  Text(
                    "From",
                    style: AppTextStyle.s12_w400(color: context.colors.textColor),
                  ),
                  DirhamPrice(
                    amount: "8.50",
                    textStyle: AppTextStyle.s18_w400(color: context.colors.primary),
                  )
                ],
              )
            ],
          ),
          DefaultButton(
            title: "Fetch Prices",
            color: context.colors.white,
            textColor: context.colors.darkGreen2,
            borderColor: context.colors.darkGreen2,
            onTap: () => AutoRouter.of(context).push(
              const PriceFinderWorkingRoute(),
            ),
          ),
        ],
      ),
    );
  }
}
