part of 'widgets_imports.dart';


class PharmacyCartInfoWidget extends StatelessWidget {
  const PharmacyCartInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 9),
      margin: const EdgeInsets.only(top: 1.2),
      decoration: BoxDecoration(
        color: context.colors.white,
      ),
      child: Row(
        spacing: 8,
        children: [
          CachedImage(
            url: "https://specialist-pharmacy.com/wp-content/uploads/2021/05/specialist-pharmacy-compounding-pharmacy-mobile.jpg",
          width: 40,
            height: 33 ,
            borderRadius: Dimens.borderRadius8PX,
          ),
          Expanded(
            child: Text("Al Manara Pharmacy",
            style: AppTextStyle.s16_w600(color: context.colors.black),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: context.colors.lightPink2,
                borderRadius: Dimens.borderRadius10PX
              ),
              child: SvgPicture.asset(
                  Res.plusIcon,
                colorFilter: ColorFilter.mode(context.colors.primary, BlendMode.srcIn),
                width: 14,
                height: 14,
              ),
            ),
          )
        ],
      ),
    );
  }
}
