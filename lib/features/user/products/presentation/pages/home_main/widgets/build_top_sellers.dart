part of 'home_main_widgets_imports.dart';

class BuildTopSellers extends StatelessWidget {
  const BuildTopSellers({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          tr("Top Seller"),
          style: AppTextStyle.s16_w700(color: context.colors.black),
        ),
        Gaps.vGap8,
        SizedBox(
          height: 140,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 10,
            itemBuilder: (context, index) {
              return const BuildTopSellersItem();
            },),
        ),
      ],
    );
  }
}

