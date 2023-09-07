part of 'seller_products_widgets_imports.dart';

class BuildSellerProducts extends StatelessWidget {
  final SellerProductsController sellerProductsController;

  const BuildSellerProducts({Key? key, required this.sellerProductsController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Row(
        children: [
          Expanded(
            child: GenericTextField(
              radius: BorderRadius.circular(7).r,
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 1, horizontal: 16).r,
              fieldTypes: FieldTypes.normal,
              type: TextInputType.text,
              action: TextInputAction.search,
              validate: (value) => value?.noValidate(),
              hint: "Search in products",
              hintColor: context.colors.disableGray,
              // margin: const EdgeInsets.only(top: 20,right: 20,left: 20).r,
            ),
          ),
          PopupMenuButton(
            color: context.colors.white,
            elevation: 20,
            enabled: true,
            onSelected: (int value) {},
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 0,
                child: Text(
                  "Top Orders",
                  style: AppTextStyle.s12_w400(color: context.colors.black),
                ),
              ),
              PopupMenuItem(
                value: 1,
                child: Text(
                  "Top Sale",
                  style: AppTextStyle.s12_w400(color: context.colors.black),
                ),
              ),
            ],
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10).r,
              padding: const EdgeInsets.all(5).r,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colors.darkPurple,
              ),
              child: const Icon(Icons.filter_alt_outlined, size: 20),
            ),
          ),
        ],
      ),
      Gaps.vGap20,
      ...List.generate(
          2,
          (index) => BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                bloc: sellerProductsController.isVisible,
                builder: (context, state) {
                  return Column(
                    children: [
                      InkWell(
                        onTap: () => sellerProductsController.isVisible
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
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      "Name : ",
                                      style: AppTextStyle.s12_w500(
                                          color: context.colors.black),
                                    ),
                                    Text(
                                      "test",
                                      style: AppTextStyle.s12_w400(
                                          color: context.colors.blackOpacity),
                                    ),
                                    Spacer(),
                                    Icon(
                                      !state.data
                                          ? Icons.add_box
                                          : Icons.indeterminate_check_box,
                                      size: 15.sp,
                                      color: context.colors.darkPurple,
                                    )
                                  ],
                                ),
                                Gaps.vGap10,
                                Row(
                                  children: [
                                    Text(
                                      "Base Price : ",
                                      style: AppTextStyle.s12_w500(
                                          color: context.colors.black),
                                    ),
                                    Text(
                                      "900 AED",
                                      style: AppTextStyle.s12_w400(
                                          color: context.colors.blackOpacity),
                                    ),
                                  ],
                                ),
                                Gaps.vGap20,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    BuildOrderOptionItem(
                                      onTap: () {},
                                      iconData: Icons.delete_outline,
                                      iconColor: context.colors.primary,
                                      itemColor: context.colors.greyWhite,
                                    ),
                                    BuildOrderOptionItem(
                                      onTap: () {},
                                      iconData: Icons.copy,
                                      iconColor: context.colors.secondary,
                                      itemColor: context.colors.greyWhite,
                                    ),
                                    BuildOrderOptionItem(
                                      onTap: () {},
                                      iconData: Icons.edit,
                                      iconColor: context.colors.blue,
                                      itemColor: context.colors.greyWhite,
                                    )
                                  ],
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
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Category",
                                      style: AppTextStyle.s14_w500(
                                          color: context.colors.black),
                                    ),
                                    Text(
                                      "Top Seller",
                                      style: AppTextStyle.s14_w400(
                                          color: context.colors.black),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: context.colors.greyWhite,
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Current Qty",
                                      style: AppTextStyle.s14_w500(
                                          color: context.colors.black),
                                    ),
                                    Text(
                                      "150",
                                      style: AppTextStyle.s14_w400(
                                          color: context.colors.black),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: context.colors.greyWhite,
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Num of Sale",
                                      style: AppTextStyle.s14_w500(
                                          color: context.colors.black),
                                    ),
                                    Text(
                                      "0",
                                      style: AppTextStyle.s14_w400(
                                          color: context.colors.black),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: context.colors.greyWhite,
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Profitable",
                                      style: AppTextStyle.s14_w500(
                                          color: context.colors.black),
                                    ),
                                    Text(
                                      "0",
                                      style: AppTextStyle.s14_w400(
                                          color: context.colors.black),
                                    ),
                                  ],
                                ),
                                Divider(
                                  color: context.colors.greyWhite,
                                  height: 20.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Approval",
                                      style: AppTextStyle.s14_w500(
                                          color: context.colors.black),
                                    ),
                                    Container(
                                      padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 6)
                                          .r,
                                      decoration: BoxDecoration(
                                          color: context.colors.primary,
                                          borderRadius:
                                              BorderRadius.circular(5).r),
                                      child: Text(
                                        "Approved",
                                        style: AppTextStyle.s12_w400(
                                          color: context.colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Divider(
                                  color: context.colors.greyWhite,
                                  height: 15.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Published",
                                      style: AppTextStyle.s14_w500(
                                          color: context.colors.black),
                                    ),
                                    Switch(value: true, onChanged: (v) {})
                                  ],
                                ),
                                Divider(
                                  color: context.colors.greyWhite,
                                  height: 10.h,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      "Featured",
                                      style: AppTextStyle.s14_w500(
                                          color: context.colors.black),
                                    ),
                                    Switch(value: true, onChanged: (v) {})
                                  ],
                                ),
                              ],
                            )),
                      ),
                    ],
                  );
                },
              ))
    ]);
  }
}
