part of 'home_main_widgets_imports.dart';

class BuildBanners extends StatelessWidget {
  final List<BannerDomainModel> banners;
  final HomeMainController controller;
  const BuildBanners(
      {super.key, required this.banners, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: banners.isNotEmpty,
      child: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 165,
        child: Visibility(
          visible: banners.length > 1,
          replacement: InkWell(
            onTap: () => controller.onBannerTwoTapped(context, banners.first),
            child: CachedImage(
              // url: "banners.first.photo",
              url: "",
              fit: BoxFit.fill,
              borderRadius: Dimens.borderRadius5PX,
              height: 165,
              imgMargin: Dimens.paddingHorizontal10PX,
            ),
          ),
          child: Swiper(
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () =>
                    controller.onBannerTwoTapped(context, banners[index]),
                child: CachedImage(
                  url: banners[index].photo,
                  fit: BoxFit.fill,
                  borderRadius: Dimens.borderRadius13PX,
                  height: 165,
                  // imgMargin: Dimens.paddingHorizontal20PX,
                ),
              );
            },
            viewportFraction: 0.99,
            scale: 0.95,
            autoplay: true,
            itemCount: banners.length,
          ),
        ),
      ),
    );
  }
}
