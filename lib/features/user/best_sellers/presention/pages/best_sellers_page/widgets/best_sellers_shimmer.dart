part of 'widgets_imports.dart';

class BestSellersShimmer extends StatelessWidget {
  const BestSellersShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...List.generate(
            5,
            (index) => const SellerItemShimmer(),
        )
      ],
    );
  }
}

class SellerItemShimmer extends StatelessWidget {
  const SellerItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
      decoration: const CustomDecoration(),
      padding: const EdgeInsets.only(bottom: 15,left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const BuildShimmerItem(height: 106, borderRadius: BorderRadius.all(Radius.circular(15))),
          Gaps.vGap10,
          const BuildShimmerItem(width: 70, height: 10,margin: EdgeInsets.only(left: 230),),
          Gaps.vGap4,
          const BuildShimmerItem(width: 200, height: 20),
          Gaps.vGap10,
          const BuildShimmerItem(width: 300, height: 15)
        ],
      ),
    );
  }
}
