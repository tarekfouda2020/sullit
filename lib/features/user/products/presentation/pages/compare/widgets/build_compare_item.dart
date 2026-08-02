part of 'compare_widgets_imports.dart';

class BuildCompareItem extends StatefulWidget {
  final ProductCard productModel;
  final CompareController controller;

  const BuildCompareItem(
      {super.key, required this.productModel, required this.controller});

  @override
  State<BuildCompareItem> createState() => _BuildCompareItemState();
}

class _BuildCompareItemState extends State<BuildCompareItem> {
  final GenericBloc<bool> showLoading = GenericBloc<bool>(false);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: CustomDecoration(),
      padding: Dimens.paddingAll10PX,
      margin: Dimens.paddingVertical5PX,
      child: Row(
        children: [
          CachedImage(
            url: widget.productModel.thumbnailImg,
            height: 70.r,
            width: 70.r,
            fit: BoxFit.fill,
            borderRadius: Dimens.borderRadius5PX,
          ),
          Gaps.hGap15,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.productModel.name,
                  style: AppTextStyle.s15_w500(color: context.colors.black),
                ),
                Gaps.vGap5,
                BuildHeaderText(
                  text: "${tr('price')} : ",
                  details: "${widget.productModel.priceHighLow}",
                  detailsColor: context.colors.primary,
                ),
                BuildHeaderText(
                  text: "${tr('brand')} : ",
                  details: "${widget.productModel.brandName}",
                ),
                BuildHeaderText(
                  text: "${tr('category')} : ",
                  details: "${widget.productModel.categoryName}",
                ),
              ],
            ),
          ),
          Column(
            children: [
              BlocBuilder<GenericBloc, GenericState>(
                bloc: showLoading,
                builder: (context, state) {
                  return Visibility(
                    visible: state.data,
                    replacement: BuildIconItem(
                      iconData: widget.productModel.isWishlist
                          ? Icons.favorite
                          : Icons.favorite_border,
                      onTap: () => ProductsHelper().toggleFavourite(
                        id: widget.productModel.id,
                        context: context,
                        loadingBloc: showLoading,
                        onRefresh: () =>
                            widget.controller.onFavChanged(widget.productModel),
                      ),
                      checkValue: widget.productModel.isWishlist,
                      padding: Dimens.paddingAll5PX,
                    ),
                    child: const LoadingIconWidget(),
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
