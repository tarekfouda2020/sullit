part of 'purchased_history_widgets_imports.dart';

class BuildHistoryLoading extends StatelessWidget {
  const BuildHistoryLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: GenericListView(
        type: ListViewType.normal,
        children: List.generate(
          4,
          (index) => Container(
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
                      const BuildShimmerItem(height: 10, width: 40),
                      BuildShimmerItem(
                          child: Text(
                        " : ",
                        style:
                            AppTextStyle.s16_w500(color: context.colors.grey),
                      )),
                      const BuildShimmerItem(height: 10, width: 100),
                      const Spacer(),
                      BuildShimmerItem(
                        child: Icon(
                          Icons.add_box,
                          size: 15.sp,
                          color: context.colors.primary,
                        ),
                      )
                    ],
                  ),
                  Gaps.vGap10,
                  Row(
                    children: [
                      const BuildShimmerItem(height: 10, width: 40),
                      BuildShimmerItem(
                          child: Text(
                        " : ",
                        style:
                            AppTextStyle.s12_w400(color: context.colors.grey),
                      )),
                      const BuildShimmerItem(height: 10, width: 40)
                    ],
                  ),
                  Gaps.vGap20,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BuildShimmerItem(
                        child: BuildOptionItem(
                          onTap: () {},
                          iconData: Icons.delete_outline,
                          iconColor: context.colors.grey,
                          itemColor: context.colors.greyWhite,
                        ),
                      ),
                      BuildShimmerItem(
                        child: BuildOptionItem(
                          onTap: () {},
                          iconData: Icons.remove_red_eye_outlined,
                          iconColor: context.colors.grey,
                          itemColor: context.colors.greyWhite,
                        ),
                      ),
                      BuildShimmerItem(
                        child: BuildOptionItem(
                          onTap: () {},
                          iconData: Icons.download,
                          iconColor: context.colors.grey,
                          itemColor: context.colors.greyWhite,
                        ),
                      )
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}
