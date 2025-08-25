part of 'product_details_widgets_imports.dart';

class BuildProductDetailsSwiper extends StatefulWidget {
  final bool innerBoxIsScrolled;
  final Product productModel;
  final ProductDetailsController controller;

  const BuildProductDetailsSwiper(
      {super.key,
      required this.innerBoxIsScrolled,
      required this.productModel,
      required this.controller});

  @override
  State<BuildProductDetailsSwiper> createState() => _BuildProductDetailsSwiperState();
}

class _BuildProductDetailsSwiperState extends State<BuildProductDetailsSwiper> {
  final GenericBloc<bool> showLoading = GenericBloc<bool>(false);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: widget.innerBoxIsScrolled ? 0.5 : 0,
      forceElevated: true,
      pinned: true,
      floating: false,
      toolbarHeight: 60.h,
      stretch: true,
      expandedHeight: 350.spMin,
      automaticallyImplyLeading: false,
      backgroundColor: context.colors.customBackground,
      centerTitle: true,
      title: AnimatedOpacity(
        opacity: widget.innerBoxIsScrolled ? 1 : 0,
        curve: Curves.bounceIn,
        duration: const Duration(milliseconds: 100),
        child: Text(
          widget.productModel.name!,
          overflow: TextOverflow.ellipsis,
          style: AppTextStyle.s14_w500(
            color: context.colors.black,
          ),
        ),
      ),
      actions: [
        BlocBuilder<GenericBloc, GenericState>(
          bloc: showLoading,
          builder: (context, state) {
            return Visibility(
              visible: state.data,
              replacement: BuildIconItem(
                width: 32,
                height: 32,
                margin: const EdgeInsets.all(25),
                changeBgColor: false,
                radius: Dimens.dp5,
                icon: widget.productModel.isWishlist! ? Res.favIcon : Res.emptyFavIcon,
                checkValue: widget.productModel.isWishlist,
                onTap: () => getIt<ProductsHelper>().toggleFavourite(
                  context: context,
                  id: widget.productModel.id!,
                  loadingBloc: showLoading,
                  onRefresh: () => widget.controller.onChangeFav(context,widget.productModel),
                ),
              ),
              child: const Center(child: LoadingIconWidget(
                margin: EdgeInsets.all(30),
              )),
            );
          },
        ),
        // BuildCompareItem(
        //   width: 43,
        //   margin: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        //   productModel: productModel,
        //   onTap: () {},
        // ),
        // BuildIconItem(
        //   width: 43,
        //   margin: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        //   iconData: Icons.compare_arrows,
        //   checkValue: productModel.isAddedTCompare,
        //   onTap: () => controller.addToCompare(context, productModel),
        //   padding: Dimens.paddingAll8PX,
        // ),
      ],
      leading: GestureDetector(
        onTap: ()=> AutoRouter.of(context).pop(),
        child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Transform.scale(
              scale: 0.5,
              child: IconButton(
                icon: Icon(Icons.arrow_back_outlined, size: 40.sp),
                onPressed: () => Navigator.of(context).pop(),
              ),
            )
        ),
      ),
      flexibleSpace: FlexibleSpaceBar(
        background: Swiper(
          autoplay: false,
          itemCount: widget.productModel.images!.length,
          pagination: const SwiperPagination(),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () => AutoRouter.of(context)
                  .push(ImageZoomRoute(image: widget.productModel.images![index])),
              child: CachedImage(
                fit: BoxFit.fill,
                url: widget.productModel.images![index],
                placeHolder: Center(
                  child: Image.asset(
                    Res.emptyCart,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
