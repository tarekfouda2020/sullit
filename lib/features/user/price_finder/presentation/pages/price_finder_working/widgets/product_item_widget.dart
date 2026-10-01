part of 'imports.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(22),
          border: Border.all(
            color: context.colors.borderColor,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CachedImage(
              url: "https://m.media-amazon.com/images/I/71TdTgvOwsL._AC_UF894,1000_QL80_.jpg",
              height: 29,
              width: 29,
              borderRadius: BorderRadius.circular(50),
            ),
            Gaps.hGap10,
            Text('Coca-Cola Original', style: AppTextStyle.s16_w400(color: context.colors.black)),
            Gaps.hGap10,
            Text('•', style: AppTextStyle.s12_w400(color: context.colors.textColor)),
            Gaps.hGap10,
            Text(
              '1L Bottle',
              style: AppTextStyle.s12_w400(color: context.colors.textColor),
            ),
            Gaps.hGap9,
          ],
        ),
      ),
    );
  }
}
