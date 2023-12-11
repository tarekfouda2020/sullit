part of 'home_main_widgets_imports.dart';

class BuildBanners extends StatelessWidget {
  final List<BannerDomainModel> banners;

  const BuildBanners({super.key, required this.banners});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: banners.isNotEmpty,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: Dimens.dp10,
          horizontal: Dimens.dp16,
        ),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 90.spMin,
          child: Swiper(
            itemBuilder: (context, index) {
              return CachedImage(
                url: banners[index].photo,
                fit: BoxFit.fill,
                borderRadius: Dimens.borderRadius5PX,
                height: 90.spMin,
                imgMargin: Dimens.paddingHorizontal5PX,
              );
            },
            itemCount: banners.length,
          ),
        ),
      ),
    );
  }
}
