part of 'imports.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsGeometry.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: context.colors.borderColor)),
      child: Row(
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
        ],
      ),
    );
  }
}
