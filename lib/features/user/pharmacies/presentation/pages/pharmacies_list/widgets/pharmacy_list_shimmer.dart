part of 'widgets_imports.dart';

class PharmacyListShimmer extends StatelessWidget {
  const PharmacyListShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        5,
        (index) => const PharmacyItemShimmer(),
      ),
    );
  }
}

class PharmacyItemShimmer extends StatelessWidget {
  const PharmacyItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 6),
      decoration: const CustomDecoration(),
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // image placeholder
          Center(
            child: BuildShimmerItem(
              width: MediaQuery.sizeOf(context).width * 0.8,
              height: 80,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
          ),
           Divider(color: context.colors.borderColor, thickness: 0.8,),
          const Padding(
            padding: EdgeInsetsDirectional.only(start: 28),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                BuildShimmerItem(width: 180, height: 18),
                SizedBox(height: 8),
                BuildShimmerItem(width: 100, height: 14),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
