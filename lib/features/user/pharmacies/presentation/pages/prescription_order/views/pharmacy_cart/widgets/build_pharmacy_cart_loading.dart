part of 'widgets_imports.dart';

class BuildPharmacyCartLoading extends StatelessWidget {
  const BuildPharmacyCartLoading({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: List.generate(
          2,
          (index) {
            return const CartShimmerItemWidget();
          },
        ),
      ),
    );
  }
}
