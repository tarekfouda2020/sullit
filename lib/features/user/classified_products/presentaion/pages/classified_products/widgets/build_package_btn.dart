part of 'classified_products_w_imports.dart';

class BuildPackageBtn extends StatelessWidget {
  final String? package;

  final ClassifiesProductsController controller;

  const BuildPackageBtn({Key? key, this.package, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      decoration: CustomDecoration(),
      child: Column(
        children: [
          GestureDetector(
            onTap: () async {
              await AutoRouter.of(context).push(const CustomersPackagesRoute());
              controller.getClassifiedProducts();
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                border: Border.all(color: context.colors.greyWhite),
              ),
              child: Text(
                tr('upgradePackage'),
                style: AppTextStyle.s14_w400(color: context.colors.primary),
              ),
            ),
          ),
          Text(
          package?? tr('noPackage'),
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
