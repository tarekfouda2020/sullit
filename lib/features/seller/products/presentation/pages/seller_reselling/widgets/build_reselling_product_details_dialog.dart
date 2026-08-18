part of 'seller_reselling_widgets_imports.dart';

class BuildResellingProductDetailsDialog extends StatelessWidget {
  const BuildResellingProductDetailsDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        decoration: BoxDecoration(
            color: context.colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10).r,
                topRight: Radius.circular(10).r)),
        padding: const EdgeInsets.only(top: 10).r,
        child: ListView(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 150.spMin,
              child: Swiper(
                autoplay: true,
                itemBuilder: (BuildContext context, int index) {
                  return const CachedImage(
                    fit: BoxFit.fill,
                    url:
                        "https://cdn.shopify.com/s/files/1/0583/7737/1842/files/banner3.jpg?v=1629357208",
                  );
                },
                itemCount: 3,
                pagination: const SwiperPagination(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10, right: 12, left: 12).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Olaey",
                    style: AppTextStyle.s20_w500(
                      color: context.colors.black,
                    ),
                  ),
                  Gaps.vGap15,
                  Row(
                    children: [
                      RatingBar.builder(
                        initialRating: 4,
                        ignoreGestures: true,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemSize: 16.sp,
                        unratedColor: context.colors.disableGray,
                        itemPadding: const EdgeInsets.only(bottom: 5).r,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Gaps.hGap10,
                      Text(
                        "(0 reviews)",
                        style: AppTextStyle.s14_w400(
                          color: context.colors.black,
                        ),
                      ),
                    ],
                  ),
                  Gaps.vGap15,
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sold By :",
                        style: AppTextStyle.s12_w500(
                          color: context.colors.black,
                        ),
                      ),
                      Gaps.vGap5,
                      Text(
                        "In House for beauty",
                        style: AppTextStyle.s14_w400(
                          color: context.colors.black,
                        ),
                      ),
                    ],
                  ),
                  Gaps.line(context.colors.greyWhite, 30.h),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12).r,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Price : ",
                    style: AppTextStyle.s16_w500(
                      color: context.colors.black,
                    ),
                  ),
                  Gaps.vGap10,
                  Text(
                    "13.00 AED",
                    style: AppTextStyle.s18_w500(
                      color: context.colors.primary,
                    ),
                  ),

                  Gaps.line(context.colors.greyWhite, 30.h),
                  Text(
                    "Quantity : ",
                    style: AppTextStyle.s16_w500(
                      color: context.colors.black,
                    ),
                  ),
                  Gaps.vGap10,

                  Row(
                    children: [
                      BuildCustomBounce(
                          onTap: () {}, iconData: CupertinoIcons.minus),
                      Text(
                        "1",
                        style:
                            AppTextStyle.s16_w400(color: context.colors.black),
                      ),
                      BuildCustomBounce(
                          onTap: () {}, iconData: CupertinoIcons.add),
                      Gaps.hGap10,
                      Text(
                        "(10 Available)",
                        style: AppTextStyle.s14_w400(
                          color: context.colors.black,
                        ),
                      ),
                    ],
                  ),
                  // Gaps.vGap10,
                  Gaps.line(context.colors.greyWhite, 30.h),

                  Row(
                    children: [
                      Text(
                        "Total Price : ",
                        style: AppTextStyle.s16_w500(
                          color: context.colors.black,
                        ),
                      ),
                      Text(
                        "13.00 AED ",
                        style: AppTextStyle.s14_w500(
                          color: context.colors.primary,
                        ),
                      ),
                      Text(
                        "( you earn 5,00 AED per sale )",
                        style: AppTextStyle.s12_w400(
                          color: context.colors.black,
                        ),
                      ),
                    ],
                  ),
                  Gaps.line(context.colors.greyWhite, 30.h),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12).r,
              child: Column(
                children: [
                  TabBar(
                      indicatorColor: context.colors.primary,
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelColor: context.colors.primary,
                      unselectedLabelColor: context.colors.gray,
                      tabs: const [
                        Tab(
                          text: "Description",
                        ),
                        Tab(
                          text: "Reviews",
                        )
                      ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10).r,
                    child: SizedBox(
                      height: MediaQuery.of(context).size.height * .2,
                      child: TabBarView(children: [
                        ListView(
                          children: [
                            Container(
                              padding: EdgeInsets.symmetric(vertical: 7).r,
                              child: Text(
                                "DescriptionDescriptionDescriptionDescriptionDescriptionDescrip"
                                "tionDescriptionDescriptionDescriptionDescriptionDescriptionDescription"
                                "DescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescr"
                                "iptionDescriptionDescriptionDescriptionDescriptionDescriptionDescriptionDescription ",
                                style: AppTextStyle.s14_w400(
                                  color: context.colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(vertical: 7).r,
                          child: Text(
                            "Reviews ",
                            style: AppTextStyle.s14_w400(
                              color: context.colors.black,
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ],
              ),
            ),
            DefaultButton(
              title: "Start Reselling",
              borderRadius: BorderRadius.circular(7).r,
              width: 100.w,
              height: 35.h,
              fontSize: 12,
              color: context.colors.darkPurple,
              margin:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 10).r,
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
