part of 'home_main_widgets_imports.dart';

class BuildHeaderTitleShimmerWidget extends StatelessWidget {
  const BuildHeaderTitleShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BuildShimmerItem(
          height: 22,
          width: 65,
          borderRadius: BorderRadius.circular(50),
        ),
        BuildShimmerItem(
          height: 22,
          width: 65,
          borderRadius: BorderRadius.circular(50),
        ),
      ],
    );
  }
}
