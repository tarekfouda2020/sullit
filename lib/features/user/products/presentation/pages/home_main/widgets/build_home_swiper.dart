part of 'home_main_widgets_imports.dart';

class BuildHomeSwiper extends StatelessWidget {
  final List<SliderDomainModel> slider;
  final HomeMainController controller;
  const BuildHomeSwiper({super.key, required this.slider, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: 165,
          child: Visibility(
            visible: slider.length > 1,
            replacement: CachedImage(
              width: MediaQuery.sizeOf(context).width,
              borderRadius: BorderRadius.circular(Dimens.dp30),
              url: slider.first.photo,
            ),
            child: Swiper(
              onIndexChanged: (index) {
                controller.swiperIndexCubit.onUpdateData(index);
              },
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () => controller.onSwiperTapped(context, slider[index]),
                  child: CachedImage(
                    width: MediaQuery.sizeOf(context).width,
                    borderRadius: Dimens.borderRadius30PX,
                    fit: BoxFit.fill,
                    url: slider[index].photo,
                  ),
                );
              },
              itemCount: slider.length,
              // pagination: const SwiperPagination(),
              viewportFraction: 1.0,
              // viewportFraction: 0.98,
              scale: 0.95,
              autoplay: true,
            ),
          ),
        ),
        Gaps.vGap8,
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: controller.swiperIndexCubit,
          builder: (context, state) {
            int currentIndex = 0;

            if (state is GenericUpdateState<int>) {
              currentIndex = state.data;
            }

            return AnimatedSmoothIndicator(
              activeIndex: currentIndex,
              count: slider.take(5).toList().length,
              effect: WormEffect(
                dotHeight: 8,
                dotWidth: 8,
                activeDotColor: context.colors.lightRed,
                dotColor: context.colors.gray4,
              ),
            );
          },
        ),
      ],
    );
  }
}
