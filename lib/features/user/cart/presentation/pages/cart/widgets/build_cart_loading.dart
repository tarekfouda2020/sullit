part of 'cart_widgets_imports.dart';

class BuildCartLoading extends StatelessWidget {
  const BuildCartLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const BuildCartStepperShimmer(),
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.dp20),
            itemCount: 5,
            itemBuilder: (_, index) => Container(
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
                        width: 190.w,
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
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                blurRadius: 1,
                spreadRadius: 1,
              )
            ],
          ),
          padding: const EdgeInsets.all(Dimens.dp15),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const BuildShimmerItem(
                height: 10,
                width: 100,
              ),
              Row(
                children: const [
                  BuildShimmerItem(height: 10, width: 100),
                  BuildShimmerItem(
                    height: 10,
                    width: 100,
                  )
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
