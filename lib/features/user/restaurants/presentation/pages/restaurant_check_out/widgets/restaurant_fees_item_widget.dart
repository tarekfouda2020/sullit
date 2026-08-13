part of 'restaurant_check_out_widgets_imports.dart';

class RestaurantFeesItemWidget extends StatelessWidget {
  final FessModel model;

  const RestaurantFeesItemWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CachedImage(
          url: model.icon,
          width: 40,
          height: 40,
          boxShape: BoxShape.circle,
          haveRadius: false,
        ),
        Gaps.hGap15,
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: AppTextStyle.s18_w500(color: context.colors.black),
              ),
              Gaps.vGap15,
              Text(
                model.description,
                style: AppTextStyle.s15_w500(color: context.colors.gray)
                    .copyWith(height: 1.3),
              ),
            ],
          ),
        )
      ],
    );
  }
}
