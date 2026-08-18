part of 'seller_shop_setting_widgets_imports.dart';

class BuildBannerSetting extends StatelessWidget {
  final SellerShopSettingController sellerShopSettingController;

  const BuildBannerSetting(
      {Key? key, required this.sellerShopSettingController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 5,
      ).r,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12).r,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5).r,
          color: context.colors.white,
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Banner Settings ",
            style: AppTextStyle.s16_w500(color: context.colors.black),
            textAlign: TextAlign.start,
          ),
          Gaps.line(context.colors.greyWhite, 20.h),
          BlocBuilder<GenericBloc<List<File>?>, GenericState<List<File>?>>(
              bloc: sellerShopSettingController.imagesCubit,
              builder: (context, imagesState) {
                if (imagesState is GenericUpdateState) {
                  return Column(
                    children: [
                      GenericTextField(
                        onTab: () =>
                            sellerShopSettingController.getFiles(context),
                        contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 10)
                            .r,
                        fieldTypes: FieldTypes.clickable,
                        type: TextInputType.text,
                        action: TextInputAction.next,
                        validate: (value) => value?.validateAddress(),
                        hint: "Banners",
                        margin: const EdgeInsets.symmetric(vertical: 10).r,
                        suffixIcon: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10).r,
                            color: context.colors.greyWhite,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(15).r,
                            child: Text(
                              "Browse",
                              style: AppTextStyle.s14_w400(
                                  color: context.colors.blackOpacity),
                              textAlign: TextAlign.start,
                            ),
                          ),
                        ),
                      ),
                      Wrap(
                        spacing: 10.r,
                        runSpacing: 10.r,
                        alignment: WrapAlignment.start,
                        children: List.generate(
                            imagesState.data!.length,
                            (index) => Container(
                                  decoration: BoxDecoration(
                                      color: context.colors.white,
                                      borderRadius: BorderRadius.circular(7).r,
                                      border: Border.all(
                                          color: context.colors.greyWhite),
                                      boxShadow: [
                                        BoxShadow(
                                            color: context.colors.greyWhite,
                                            blurRadius: 1,
                                            spreadRadius: 1)
                                      ]),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Image.file(
                                          height: 70.r,
                                          width: 70.r,
                                          File(imagesState.data![index].path)),
                                      Padding(
                                        padding: const EdgeInsets.all(8).r,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "sample.pdf",
                                              style: AppTextStyle.s14_w500(
                                                color: context.colors.black,
                                              ),
                                            ),
                                            Gaps.vGap10,
                                            Text(
                                              "2,99 KB",
                                              style: AppTextStyle.s12_w400(
                                                color:
                                                    context.colors.blackOpacity,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                )),
                      )
                    ],
                  );
                } else {
                  return GenericTextField(
                    onTab: () => sellerShopSettingController.getFiles(context),
                    contentPadding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 10)
                            .r,
                    fieldTypes: FieldTypes.clickable,
                    type: TextInputType.text,
                    action: TextInputAction.next,
                    validate: (value) => value?.validateAddress(),
                    hint: "Banners",
                    margin: const EdgeInsets.only(top: 10, bottom: 20).r,
                    suffixIcon: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10).r,
                        color: context.colors.greyWhite,
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(15).r,
                        child: Text(
                          "Browse",
                          style: AppTextStyle.s14_w400(
                              color: context.colors.blackOpacity),
                          textAlign: TextAlign.start,
                        ),
                      ),
                    ),
                  );
                }
              }),
        ],
      ),
    );
  }
}
