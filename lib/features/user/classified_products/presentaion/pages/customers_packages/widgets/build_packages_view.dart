part of 'customers_packages_w_imports.dart';
class BuildPackagesView extends StatelessWidget {
  final List<CusPackage> packages ;
  final CustomerPackagesController controller ;
  const BuildPackagesView({Key? key, required this.packages, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        runSpacing: 10,
        spacing: 10,
        children: List.generate(
          packages.length,
              (index) => BuildPackageCard(
            package: packages[index],
            controller: controller,
          ),
        ),
      ),
    );
  }
}
