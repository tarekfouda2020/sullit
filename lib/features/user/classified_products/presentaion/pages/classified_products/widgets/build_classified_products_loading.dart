part of 'classified_products_w_imports.dart';

class BuildClassifiedProductsLoading extends StatelessWidget {
  const BuildClassifiedProductsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: Dimens.paddingAll15PX,
      children: [
        Container(
          padding: Dimens.paddingVertical20PX,
          width: MediaQuery.of(context).size.width,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              BuildShimmerItem(
                child: Icon(
                  Icons.upload_outlined,
                  color: context.colors.white,
                ),
              ),
              Padding(
                padding: Dimens.paddingVertical10PX,
                child: const BuildShimmerItem(width: 40, height: 10),
              ),
              const BuildShimmerItem(height: 7, width: 100)
            ],
          ),
        ),
        Container(
          padding: Dimens.paddingVertical20PX,
          margin: Dimens.paddingVertical10PX,
          width: MediaQuery.of(context).size.width,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              BuildShimmerItem(
                width: 40.r,
                height: 40.r,
                borderRadius: Dimens.borderRadius40PX,
              ),
              BuildShimmerItem(width: 130.w, height: 7.h)
            ],
          ),
        ),
        Container(
          padding: Dimens.paddingVertical20PX,
          width: MediaQuery.of(context).size.width,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              Container(
                margin: Dimens.paddingVertical10PX,
                padding: Dimens.paddingAll10PX,
                decoration: BoxDecoration(
                  borderRadius: Dimens.borderRadius10PX,
                  color: Colors.white,
                  border: Border.all(color: context.colors.greyWhite),
                ),
                child: BuildShimmerItem(width: 130.w, height: 7.h),
              ),
              BuildShimmerItem(width: 70.w, height: 7.h)
            ],
          ),
        ),
        Gaps.vGap20,
        Column(
          children: List.generate(
            2,
            (index) => Stack(
              children: [
                Container(
                  margin: Dimens.paddingVertical5PX,
                  width: MediaQuery.of(context).size.width,
                  padding: Dimens.paddingAll10PX,
                  decoration: CustomDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          BuildShimmerItem(height: 10.h, width: 100.w),
                          const Spacer(),
                          BuildShimmerItem(width: 50.w, height: 10.h),
                          BuildShimmerItem(
                            child: Switch(
                              value: false,
                              onChanged: (value) {},
                              activeColor: context.colors.primary,
                            ),
                          ),
                        ],
                      ),
                      Gaps.vGap5,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BuildShimmerItem(
                            width: 50.w,
                            height: 7.h,
                          ),
                          const Spacer(),
                          BuildShimmerItem(
                            child: Icon(
                              Icons.edit_outlined,
                              color: context.colors.grey,
                              size: 25,
                            ),
                          ),
                          BuildShimmerItem(
                            child: Icon(
                              Icons.delete_outline,
                              color: context.colors.primary,
                              size: 25,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
