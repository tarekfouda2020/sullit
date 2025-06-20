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
          height: 130.spMin,
          child: Visibility(
            visible: banners.length > 1,
            replacement: InkWell(
              onTap: () => HelperMethods.instance.launchURL(
                url: banners.first.url ?? "",
              ),
              child: CachedImage(
                // url: "banners.first.photo",
                url: "",
                fit: BoxFit.fill,
                borderRadius: Dimens.borderRadius5PX,
                height: 130.spMin,
                imgMargin: Dimens.paddingHorizontal5PX,
              ),
            ),
            child: Swiper(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => HelperMethods.instance.launchURL(
                    url: banners[index].url ?? "",
                  ),
                  child: CachedImage(
                    url: banners[index].photo,
                    fit: BoxFit.fill,
                    borderRadius: Dimens.borderRadius5PX,
                    height: 130.spMin,
                    imgMargin: Dimens.paddingHorizontal5PX,
                  ),
                );
              },
              viewportFraction: 0.9,
              autoplay: false,
              itemCount: banners.length,
            ),
          ),
        ),
      ),
    );
  }
}
