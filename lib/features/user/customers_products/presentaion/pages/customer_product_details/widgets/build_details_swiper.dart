part of 'customer_product_details_w_imports.dart';

class BuildDetailsSwiper extends StatelessWidget {
  final CustomerProduct detailsModel;

  const BuildDetailsSwiper({super.key, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.spMin,
      child: Swiper(
        autoplay: false,
        itemCount: detailsModel.photos.length,
        pagination: const SwiperPagination(),
        itemBuilder: (BuildContext context, int index) {
          return CachedImage(
            fit: BoxFit.fill,
            url: detailsModel.photos[index],
            borderRadius: Dimens.borderRadius5PX,
          );
        },
      ),
    );
  }
}
