part of 'home_main_widgets_imports.dart';

class InStoreShoppingBanner extends StatelessWidget {
  final VoidCallback? onTap;
  final String storeName;
  final String image;

  const InStoreShoppingBanner({
    super.key,
    this.onTap,
    required this.storeName,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 74,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              context.colors.primary,
              context.colors.darkRed,
              context.colors.black
            ],
            stops: const [0.0, 0.55, 1.0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              Container(
                width: 48,
                height: 48,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.white,
                  border: Border.all(color: context.colors.white, width: 3),
                ),
                child: ClipOval(
                  child: CachedImage(
                    height: 48,
                    width: 48,
                    fit: BoxFit.contain,
                    haveRadius: false,
                    url: image,
                    boxShape: BoxShape.circle,
                  ),
                ),
              ),
              Gaps.hGap16,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      tr('areYouAtStore').replaceAll('{store}', storeName),
                      style: AppTextStyle.s12_w400(color: context.colors.white),
                    ),
                    Gaps.vGap8,
                    Text(
                      tr('inStoreShopping'),
                      style: AppTextStyle.s22_w700(color: context.colors.white),
                    ),
                  ],
                ),
              ),
              Container(
                width: 24,
                height: 24,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.colors.white,
                ),
                child: Icon(
                  Icons.arrow_right_alt_outlined,
                  color: context.colors.primary,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
