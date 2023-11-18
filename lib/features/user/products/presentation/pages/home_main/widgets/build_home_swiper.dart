part of 'home_main_widgets_imports.dart';

class BuildHomeSwiper extends StatelessWidget {
  final List<SliderDomainModel> slider;

  const BuildHomeSwiper({super.key, required this.slider});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 165,
      child: Swiper(
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsetsDirectional.only(end: 24),
            child: CachedImage(
              borderRadius: BorderRadius.circular(Dimens.dp30),
              url: slider[index].photo,
            ),
          );
        },
        itemCount: slider.length,
        pagination: const SwiperPagination(),
        viewportFraction: 0.9,
        autoplay: false,
      ),
    );
  }
}
