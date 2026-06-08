part of 'seller_uploaded_file_widgets_imports.dart';

class BuildSellerSortFile extends StatelessWidget {
  const BuildSellerSortFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250.h,
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20).r, topRight: Radius.circular(20).r)),
      padding: const EdgeInsets.only(top: 20, right: 20, left: 20).r,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          InkWell(
              onTap: () => AutoRouter.of(context).pop(),
              child: Icon(
                Icons.clear,
                color: context.colors.darkPurple,
              )),
          Gaps.line(context.colors.blackOpacity, 30.h),
          Text(
            "Sort By Newest",
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
          Gaps.line(context.colors.greyWhite, 30.h),
          Text(
            "Sort By Oldest",
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
          Gaps.line(context.colors.greyWhite, 30.h),
          Text(
            "Sort By Smallest",
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
          Gaps.line(context.colors.greyWhite, 30.h),
          Text(
            "Sort By Largest",
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
