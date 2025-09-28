part of 'home_main_widgets_imports.dart';

class BuildHomeSwiper extends StatelessWidget {
  final List<SliderDomainModel> slider;

  const BuildHomeSwiper({super.key, required this.slider});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 165,
      child: Visibility(
        visible: slider.length > 1,
        replacement: CachedImage(
          width: MediaQuery.of(context).size.width,
          borderRadius: BorderRadius.circular(Dimens.dp30),
          url: slider.first.photo,
        ),
        child: Swiper(
          itemBuilder: (BuildContext context, int index) {
            return CachedImage(
              width: MediaQuery.of(context).size.width,
              borderRadius: Dimens.borderRadius30PX,
              fit:  BoxFit.cover,
              url: slider[index].photo,
            );
          },
          itemCount: slider.length,
          // pagination: const SwiperPagination(),
          viewportFraction: 1.0,
          // viewportFraction: 0.98,
          scale: 0.95,
          autoplay: false,
        ),
      ),
    );
  }
}
