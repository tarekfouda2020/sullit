part of 'customers_packages_w_imports.dart';
class BuildPackageCard extends StatelessWidget {
  final CusPackage package ;
  final CustomerPackagesController controller ;
  const BuildPackageCard({Key? key, required this.package, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: 10, vertical: 10),
      decoration: CustomDecoration(),
      width: MediaQuery.of(context).size.width * .45,
      child: Column(
        children: [
          CachedImage(
            url: package.logo,
            height: 50,
            width: 50,
          ),
          Gaps.vGap10,
          Text(
            package.name,
            style: AppTextStyle.s12_w400(
                color: context.colors.black),
          ),
          Padding(
            padding:
            const EdgeInsets.symmetric(vertical: 10.0),
            child: Row(
              children: [
                const Icon(
                  Icons.done,
                  color: Colors.green,
                  size: 15,
                ),
                Gaps.hGap10,
                Text(
                  ' ${package.productUpload} ${tr('productUpload')}',
                  style: AppTextStyle.s12_w400(
                      color: context.colors.black),
                ),
              ],
            ),
          ),
          Text(
            package.amount,
            style: AppTextStyle.s12_w400(
                color: context.colors.black),
          ),
          GestureDetector(
            onTap: () => controller.showPaymentDialog(
              context,
              package.id,
              package.isFree,
            ),
            child: Container(
              margin:
              const EdgeInsets.symmetric(vertical: 10),
              padding: const EdgeInsets.symmetric(
                  horizontal: 5, vertical: 7),
              decoration: BoxDecoration(
                color: context.colors.primary,
                borderRadius: BorderRadius.circular(7),
              ),
              child: Text(
                tr('purchasePackage'),
                style: AppTextStyle.s12_w300(
                  color: context.colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
