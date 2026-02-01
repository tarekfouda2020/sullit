part of 'home_main_widgets_imports.dart';

class BuildTopSellersItem extends StatelessWidget {
  const BuildTopSellersItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 84,
          height: 84,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: const BorderRadius.all(Radius.circular(12)),
              border: Border.all(color: const Color(0xffECECEC), width: 1)),
          child: const Center(
            child: CachedImage(
              height: 58,
              width: 58,
              fit: BoxFit.cover,
              haveRadius: false,
              url: Res.recyleIcon,
              boxShape: BoxShape.circle,
            ),
          ),
        ),
        Gaps.vGap8,
        SizedBox(
          width: 93,
          child: Text(
             textAlign: TextAlign.center,
            "Cinnabon",
            maxLines: 2,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        )
      ],
    );
  }
}
