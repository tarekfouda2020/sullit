part of 'home_main_widgets_imports.dart';

class BuildTopSellersItem extends StatelessWidget {
   final Shop topSellers;
  const BuildTopSellersItem({super.key, required this.topSellers});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 90,
          height: 84,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: const Color(0xffECECEC), width: 1)),
          child:  Center(
            child: CachedImage(
              height: 68,
              width: 60,
              fit: BoxFit.contain,
              haveRadius: false,
              url: "${topSellers.logo}",
              boxShape: BoxShape.circle,
            ),
          ),
        ),
        Gaps.vGap8,
        SizedBox(
          width: 95,
          child: Text(
             textAlign: TextAlign.center,
            "${topSellers.name}",
            maxLines: 2,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        )
      ],
    );
  }
}
