part of 'customers_packages_w_imports.dart';

class BuildPackagesLoading extends StatelessWidget {
  const BuildPackagesLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      type: ListViewType.grid,
      spacing: 15.r,
      runSpacing: 15.r,
      padding: Dimens.paddingAll15PX,
      gridItemHeight: Dimens.dp210.spMin,
      children: List.generate(
        5,
        (index) => Container(
          padding: Dimens.paddingAll10PX,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              BuildShimmerItem(
                child: CachedImage(
                  url: '',
                  height: 50,
                  borderRadius: BorderRadius.circular(5),
                  width: 50,
                ),
              ),
              Gaps.vGap10,
              const BuildShimmerItem(height: 7, width: 70),
              Padding(
                padding: Dimens.paddingVertical10PX,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    BuildShimmerItem(
                      child: Icon(
                        Icons.done,
                        color: Colors.grey,
                        size: 15,
                      ),
                    ),
                    BuildShimmerItem(width: 100, height: 7)
                  ],
                ),
              ),
              const BuildShimmerItem(width: 100, height: 7),
              Container(
                margin: Dimens.paddingVertical10PX,
                padding: Dimens.paddingAll5PX,
                decoration: BoxDecoration(
                  color: context.colors.greyWhite,
                  borderRadius: Dimens.borderRadius5PX,
                ),
                child: const BuildShimmerItem(height: 7, width: 150),
              )
            ],
          ),
        ),
      ),
    );
  }
}
