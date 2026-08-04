part of 'addresses_widgets_imports.dart';

class AddressLoadingItemWidget extends StatelessWidget {
  const AddressLoadingItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingVertical12PX,
      padding: Dimens.paddingAll10PX,
      decoration: const CustomDecoration(),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // BuildShimmerItem(
          //   child: Radio<bool>(
          //     onChanged: (value) {},
          //     value: false,
          //     groupValue: true,
          //   ),
          // ),
          // Gaps.hGap10,
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
                        width: index.isEven ? 80.w : 60.w,
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
    );
  }
}
