part of 'home_main_widgets_imports.dart';

class SellerCardSectionWidget extends StatelessWidget {
  final String image;
  final String name;

  const SellerCardSectionWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Gaps.vGap8,
        CachedImage(
          height: Dimens.dp72,
          width: 182,
          borderWidth: 1.5,
          borderColor: context.colors.gray3,
          border: Border.all(color: context.colors.gray3, width: 1.2),
          borderRadius: Dimens.borderRadius12PX,
          url: image,
          fit: BoxFit.cover,
        ),
        Gaps.vGap4,
        SizedBox(
          width: 170,
          child: Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: AppTextStyle.s15_w500(color: context.colors.black),
          ),
        )
      ],
    );
  }
}
