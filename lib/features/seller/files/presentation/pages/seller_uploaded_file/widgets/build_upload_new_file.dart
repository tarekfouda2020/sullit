part of 'seller_uploaded_file_widgets_imports.dart';

class BuildUploadNewFile extends StatelessWidget {
  const BuildUploadNewFile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12).r,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.blackOpacity,
            ),
            child: Icon(
              Icons.add,
              color: context.colors.white,
              size: 35.sp,
            ),
          ),
          Gaps.vGap20,
          Text(
            "Upload New File",
            style: AppTextStyle.s16_w400(color: context.colors.black),
          ),
          Divider(
            color: context.colors.greyWhite,
            height: 20.h,
          )
        ],
      ),
    );
  }
}
