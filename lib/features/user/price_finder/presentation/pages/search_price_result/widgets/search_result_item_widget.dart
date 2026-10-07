part of 'imports.dart';

class SearchResultItemWidget extends StatelessWidget {
  final ProductCard model;
 final SearchPriceController controller;
  const SearchResultItemWidget({super.key, required this.model, required this.controller});

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
          InkWell(
            onTap: () => controller.fetchProductPrice(context, model.id),
            borderRadius: BorderRadius.circular(12),
            child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CachedImage(
                url: model.thumbnailImg,
                height: 52,
                width: 52,
                borderRadius: BorderRadius.circular(12),
              ),
              Gaps.hGap13,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: 10,
                  children: [
                    Text(
                      model.name,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyle.s18_w700(color: context.colors.black).copyWith(height: 1.3),
                    ),
                    Text(
                      "${model.unit} • ${model.categoryName}",
                      style: AppTextStyle.s15_w400(color: context.colors.black),
                    ),
                    Text(
                      model.barcode,
                      style: AppTextStyle.s13_w400(color: context.colors.textColor),
                    ),
                  ],
                ),
              ),
              Gaps.hGap12,
              Column(
                spacing: 10,
                children: [
                  Text(
                    "From",
                    style: AppTextStyle.s12_w400(color: context.colors.textColor),
                  ),
                  DirhamPrice(
                    amount: model.priceHighLow,
                    textStyle: AppTextStyle.s18_w700(color: context.colors.primary),
                  ),
                ],
              ),
            ],
          ),
          ),
          DefaultButton(
            title: "Fetch Prices",
            color: context.colors.white,
            textColor: context.colors.darkGreen2,
            borderColor: context.colors.darkGreen2,
            onTap: () => controller.fetchProductPrice(context,model.id),
          ),
        ],
      ),
    );
  }
}
