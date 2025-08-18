part of 'cart_widgets_imports.dart';

class CartShimmerItemWidget extends StatelessWidget {
  const CartShimmerItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: Dimens.dp5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5).r,
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            color: context.colors.greyWhite,
            blurRadius: 1,
            spreadRadius: 1,
          )
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              BuildShimmerItem(
                child: CachedImage(
                  url: "",
                  height: 70.h,
                  width: 80.w,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: const [
                  BuildShimmerItem(
                    height: 10,
                    width: 200,
                  ),
                  BuildShimmerItem(
                    height: 10,
                    width: 200,
                  ),
                ],
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                BuildShimmerItem(height: 10, width: 100),
                BuildShimmerItem(
                  height: 10,
                  width: 100,
                ),
              ],
            ),
          ),
          Row(
            children: [
              BuildShimmerItem(
                child: BuildCustomBounce(
                  onTap: () {},
                  iconData: CupertinoIcons.add,
                ),
              ),
              BuildShimmerItem(
                height: 10,
                width: 30.w,
              ),
              BuildShimmerItem(
                child: BuildCustomBounce(
                  onTap: () {},
                  iconData: CupertinoIcons.minus,
                ),
              ),
              const Spacer(),
              BuildShimmerItem(
                child: BuildCustomBounce(
                  onTap: () {},
                  iconData: CupertinoIcons.delete,
                  deleteIcon: true,
                ),
              ),
            ],
          ),
          Gaps.vGap10
        ],
      ),
    );
  }
}
