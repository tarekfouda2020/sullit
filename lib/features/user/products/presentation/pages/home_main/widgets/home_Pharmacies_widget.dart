part of 'home_main_widgets_imports.dart';

class HomePharmaciesWidget extends StatelessWidget {
  final HomeMainController controller;
  const HomePharmaciesWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BuildHeaderTitle(
          title: "Pharmacies",
          onTap: () {

          },
        ),
        SizedBox(
          height: 118,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              spacing: 12,
              children: List.generate(3, (index) {
                return Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                  Gaps.vGap8,
                  CachedImage(
                    height: Dimens.dp72,
                    width: 185,
                    borderWidth: 1.5,
                    borderColor: context.colors.borderColor,
                    borderRadius: Dimens.borderRadius12PX,
                    url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5nDDXZipLhwI8K5JicQ-1UGxBd_zrcRGgIg&s",
                  ),
                  Gaps.vGap4,
                  SizedBox(
                    width: 170,
                    child: Text("Al Manara Pharmacy",
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: AppTextStyle.s15_w500(color: context.colors.black),
                    ),
                  )
                ],);
              },),
            ),
          ),
        )
      ],
    );
  }
}
