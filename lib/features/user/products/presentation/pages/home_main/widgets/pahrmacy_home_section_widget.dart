part of 'home_main_widgets_imports.dart';

class PharmacyHomeSectionWidget extends StatelessWidget {
  final HomeMainController controller;
  const PharmacyHomeSectionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Gaps.vGap10,
        Image.asset(height: 145, Res.pharmacyImage),
        Gaps.vGap16,
        const PharmacyAdvantagesWidget(),
        Gaps.vGap24,
        HomePharmaciesWidget(controller: controller)
      ],
    );
  }
}
