part of 'seller_reselling_widgets_imports.dart';

class BuildResellingProducts extends StatelessWidget {
  final SellerResellingController sellerResellingController;

  const BuildResellingProducts(
      {Key? key, required this.sellerResellingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20).r,
      child: Column(
        children: List.generate(
            1,
            (index) => BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                  bloc: sellerResellingController.isSelectedCubit,
                  builder: (context, state) {
                    return Column(
                      children: [
                        InkWell(
                          onTap: () => sellerResellingController.isSelectedCubit
                              .onUpdateData(!state.data),
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 5,
                              ).r,
                              padding: const EdgeInsets.all(8).r,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5).r,
                                  color: context.colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: context.colors.greyWhite,
                                        blurRadius: 1,
                                        spreadRadius: 1)
                                  ]),
                              child: Row(
                                children: [
                                  Expanded(
                                      child: CachedImage(
                                    url:
                                        "https://cdn.shopify.com/s/files/1/0583/7737/1842/files/banner3.jpg?v=1629357208",
                                    height: 50.r,
                                    width: 50.r,
                                    haveRadius: true,
                                    borderRadius: BorderRadius.circular(10.r),
                                  )),
                                  Gaps.hGap15,
                                  Expanded(
                                    flex: 4,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Product : ",
                                              style: AppTextStyle.s12_w500(
                                                  color: context.colors.black),
                                            ),
                                            Text(
                                              "Product Text",
                                              style: AppTextStyle.s12_w400(
                                                  color: context
                                                      .colors.blackOpacity),
                                            ),
                                            Spacer(),
                                            Icon(
                                              !state.data
                                                  ? Icons.add_box
                                                  : Icons
                                                      .indeterminate_check_box,
                                              size: 15.sp,
                                              color: context.colors.darkPurple,
                                            )
                                          ],
                                        ),
                                        Gaps.vGap10,
                                        Row(
                                          children: [
                                            Text(
                                              "SKU : ",
                                              style: AppTextStyle.s12_w500(
                                                  color: context.colors.black),
                                            ),
                                            Text(
                                              "325526-45756",
                                              style: AppTextStyle.s12_w400(
                                                  color: context
                                                      .colors.blackOpacity),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )),
                        ),
                        Visibility(
                          visible: state.data,
                          child: Container(
                              margin: const EdgeInsets.symmetric(
                                vertical: 5,
                              ).r,
                              padding: const EdgeInsets.symmetric(
                                      vertical: 10, horizontal: 12)
                                  .r,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5).r,
                                  color: context.colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: context.colors.greyWhite,
                                        blurRadius: 1,
                                        spreadRadius: 1)
                                  ]),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: DefaultButton(
                                      title: "Start Reselling",
                                      borderRadius: BorderRadius.circular(5).r,
                                      width: 100.w,
                                      height: 25.h,
                                      fontSize: 10,
                                      color: context.colors.darkPurple,
                                      margin: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10)
                                          .r,
                                      onTap: () {},
                                    ),
                                  ),
                                  Expanded(
                                    child: DefaultButton(
                                      title: "View Details",
                                      borderRadius: BorderRadius.circular(5).r,
                                      width: 100.w,
                                      height: 25.h,
                                      fontSize: 10,
                                      textColor: context.colors.darkPurple,
                                      borderColor: context.colors.darkPurple,
                                      color: context.colors.white,
                                      margin: const EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 10)
                                          .r,
                                      onTap: () {
                                        showModalBottomSheet(
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.only(
                                                    topLeft:
                                                        Radius.circular(20).r,
                                                    topRight:
                                                        Radius.circular(20).r)),
                                            context: context,
                                            builder: (context) {
                                              return const BuildResellingProductDetailsDialog();
                                            });
                                      },
                                    ),
                                  )
                                ],
                              )),
                        ),
                      ],
                    );
                  },
                )),
      ),
    );
  }
}
