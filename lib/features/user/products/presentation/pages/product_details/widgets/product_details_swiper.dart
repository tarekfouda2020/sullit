part of 'product_details_widgets_imports.dart';

class BuildProductDetailsSwiper extends StatefulWidget {
  final bool innerBoxIsScrolled;
  final Product productModel;
  final ProductDetailsController controller;

  const BuildProductDetailsSwiper({
    super.key,
    required this.innerBoxIsScrolled,
    required this.productModel,
    required this.controller,
  });

  @override
  State<BuildProductDetailsSwiper> createState() => _BuildProductDetailsSwiperState();
}

class _BuildProductDetailsSwiperState extends State<BuildProductDetailsSwiper> {
  final GenericBloc<bool> showLoading = GenericBloc<bool>(false);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: widget.controller.showAppBarTitleCubit,
      builder: (context, state) {
        return SliverAppBar(
          elevation: widget.innerBoxIsScrolled ? 0.5 : 0,
          forceElevated: true,
          pinned: true,
          floating: false,
          toolbarHeight: 60.h,
          stretch: true,
          expandedHeight: 350.spMin,
          forceMaterialTransparency: !state.data,
          automaticallyImplyLeading: false,
          backgroundColor: context.colors.customBackground,
          centerTitle: true,
          title: AnimatedOpacity(
            opacity: state.data ? 1 : 0,
            curve: Curves.bounceIn,
            duration: const Duration(milliseconds: 100),
            child: Text(
              widget.productModel.name!,
              maxLines: 2,
              style: AppTextStyle.s16_w700(
                color: context.colors.black,
              ),
            ),
          ),
          actionsPadding: EdgeInsets.zero,
          actions: [
            BlocBuilder<GenericBloc, GenericState>(
              bloc: showLoading,
              builder: (context, state) {
                return Visibility(
                  visible: state.data,
                  replacement: BuildIconItem(
                    width: 32,
                    height: 32,
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    changeBgColor: false,
                    radius: Dimens.dp5,
                    icon: widget.productModel.isWishlist! ? Res.favIcon : Res.emptyFavIcon,
                    checkValue: widget.productModel.isWishlist,
                    onTap: () => getIt<ProductsHelper>().toggleFavourite(
                      context: context,
                      id: widget.productModel.id!,
                      loadingBloc: showLoading,
                      onRefresh: () => widget.controller.onChangeFav(context, widget.productModel),
                    ),
                  ),
                  child: const Center(
                    child: LoadingIconWidget(margin: EdgeInsets.all(25)),
                  ),
                );
              },
            ),
            BuildShareItem(
              onTap: () => widget.controller.onShareProduct(context),
            ),
          ],
          leading: GestureDetector(
            onTap: () => widget.controller.onPop(context),
            child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Transform.scale(
                  scale: 0.5,
                  child: IconButton(
                    icon: Icon(Icons.arrow_back_outlined, size: 40.sp),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                )),
          ),
          flexibleSpace: FlexibleSpaceBar(
            background: Swiper(
              autoplay: false,
              itemCount: widget.productModel.images!.length,
              physics: widget.productModel.images!.length > 1 ? null : const NeverScrollableScrollPhysics(),
              pagination: const SwiperPagination(),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () => AutoRouter.of(context).push(ImageZoomRoute(image: widget.productModel.images![index])),
                  child: CachedImage(
                    fit: BoxFit.contain,
                    url: widget.productModel.images![index],
                    placeHolder: Center(
                      child: Image.asset(
                        Res.emptyCart,
                        width: 170,
                        height: 170,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
