part of 'purchasing_widgets_imports.dart';

class BuildLoadingSummaryItem extends StatelessWidget {
  final double width;

  const BuildLoadingSummaryItem({super.key, required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildShimmerItem(height: 15.h, width: width),
        BuildShimmerItem(height: 15.h, width: 100.w),
      ],
    );
  }
}
