part of 'addresses_widgets_imports.dart';

class BuildAddressLoading extends StatelessWidget {
  const BuildAddressLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GenericListView(
      padding: Dimens.paddingAll15PX,
      type: ListViewType.normal,
      children: List.generate(
        3,
        (index) => Container(
          margin: Dimens.paddingVertical12PX,
          padding: Dimens.paddingAll10PX,
          decoration: CustomDecoration(),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BuildShimmerItem(
                child: Radio<bool>(
                  onChanged: (value) {},
                  value: false,
                  groupValue: true,
                ),
              ),
              Gaps.hGap10,
              Expanded(
                child: Column(
                  children: List.generate(
                    6,
                    (index) => Padding(
                      padding: Dimens.paddingVertical5PX,
                      child: Row(
                        children: [
                          BuildShimmerItem(
                            height: 5.h,
                            width: index.isEven ? 90.w : 70.w,
                          ),
                          BuildShimmerItem(
                            child: Text(
                              "   :  ",
                              style: AppTextStyle.s18_w700(
                                  color: context.colors.black),
                            ),
                          ),
                          BuildShimmerItem(
                            height: 5.h,
                            width: index.isEven ? 100.w : 70.w,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
    // return Expanded(
    //   child: ListView(
    //     children: const [
    //       BuildAddNewAddressCardShimmer(),
    //       BuildListAddressShimmer(),
    //     ],
    //   ),
    // );
  }
}
