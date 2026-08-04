part of 'seller_uploaded_file_widgets_imports.dart';

class BuildFileItem extends StatelessWidget {
  const BuildFileItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(7).r,
          border: Border.all(color: context.colors.greyWhite),
          boxShadow: [
            BoxShadow(
                color: context.colors.greyWhite, blurRadius: 1, spreadRadius: 1)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                CachedImage(
                    fit: BoxFit.cover,
                    haveRadius: true,
                    borderRadius: BorderRadius.only(
                        topRight: const Radius.circular(7).r,
                        topLeft: const Radius.circular(7).r),
                    url:
                        "https://media.istockphoto.com/id/1175215972/vector/file-folder-in-flat-on-white-background.jpg?s=612x612&w=0&k=20&c=dALCaVx9KdXJkgPO6Bjim_3TLZA9rnN__9gZRdo1zQ8="),
                PopupMenuButton(
                  color: context.colors.white,
                  elevation: 20,
                  icon: Icon(
                    Icons.more_vert,
                    color: context.colors.darkPurple,
                  ),
                  enabled: true,
                  onSelected: (int value) {
                    if (value == 0) {
                      showModalBottomSheet(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20).r,
                                  topRight: Radius.circular(20).r)),
                          context: context,
                          builder: (context) {
                            return const BuildFileDetailsSheet();
                          });
                    }
                  },
                  itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 0,
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline,
                            color: context.colors.blackOpacity,
                            size: 17.sp,
                          ),
                          Gaps.hGap5,
                          Text(
                            "Details Info",
                            style: AppTextStyle.s12_w400(
                                color: context.colors.black),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 1,
                      child: Row(
                        children: [
                          Icon(
                            Icons.download_for_offline_outlined,
                            color: context.colors.blackOpacity,
                            size: 17.sp,
                          ),
                          Gaps.hGap5,
                          Text(
                            "Download",
                            style: AppTextStyle.s12_w400(
                                color: context.colors.black),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 2,
                      child: Row(
                        children: [
                          Icon(
                            Icons.copy,
                            color: context.colors.blackOpacity,
                            size: 17.sp,
                          ),
                          Gaps.hGap5,
                          Text(
                            "Copy Link",
                            style: AppTextStyle.s12_w400(
                                color: context.colors.black),
                          ),
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value: 3,
                      child: Row(
                        children: [
                          Icon(
                            Icons.delete_outline,
                            color: context.colors.blackOpacity,
                            size: 17.sp,
                          ),
                          Gaps.hGap5,
                          Text(
                            "Delete",
                            style: AppTextStyle.s12_w400(
                                color: context.colors.black),
                          ),
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8).r,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                    color: context.colors.blackOpacity,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
