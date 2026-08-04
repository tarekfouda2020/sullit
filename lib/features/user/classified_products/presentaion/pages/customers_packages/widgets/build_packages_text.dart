part of 'customers_packages_w_imports.dart';

class BuildPackagesText extends StatelessWidget {
  const BuildPackagesText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Text(
        tr('premiumPackageForCustomers'),
        style: AppTextStyle.s16_w700(color: context.colors.black),
      ),
    );
  }
}
