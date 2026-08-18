part of 'widgets_imports.dart';

class RejectionReasonsWidget extends StatelessWidget {
  final String title;
  final List<String> reasons;

  const RejectionReasonsWidget({
    super.key,
    required this.title,
    required this.reasons,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: Dimens.paddingAll15PX,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: CustomDecoration(
        thisColor: context.colors.customBackground,
        myBoxShadow: const [],
        radius: Dimens.borderRadius15PX,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.s14_w600(color: context.colors.black),
          ),
          Gaps.vGap10,
          ...reasons.map(
            (reason) => Padding(
              padding: EdgeInsets.only(bottom: 6.h),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 5.h, right: 8.w, left: 8.w),
                    child: Container(
                      width: 6.w,
                      height: 6.w,
                      decoration: BoxDecoration(
                        color: context.colors.black,
                        shape: BoxShape.circle,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      reason,
                      style: AppTextStyle.s14_w400(color: context.colors.black)
                          .copyWith(height: 1.4),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
