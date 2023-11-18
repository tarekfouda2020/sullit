part of 'home_main_widgets_imports.dart';

class BuildBanners extends StatelessWidget {
  final List<BannerDomainModel> banners;

  const BuildBanners({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: Dimens.dp10,
        horizontal: Dimens.dp16,
      ),
      child: Row(
        children: List.generate(
          banners.length,
          (index) => Expanded(
            child: CachedImage(
              url: banners[index].photo,
              borderRadius: Dimens.borderRadius5PX,
              height: 90.spMin,
              imgMargin: Dimens.paddingHorizontal5PX,
            ),
          ),
        ),
      ),
    );
  }
}
