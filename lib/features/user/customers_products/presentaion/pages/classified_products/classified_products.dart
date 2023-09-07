part of 'classified_products_imports.dart';

class ClassifiedProducts extends StatefulWidget {
  const ClassifiedProducts({Key? key}) : super(key: key);

  @override
  State<ClassifiedProducts> createState() => _ClassifiedProductsState();
}

class _ClassifiedProductsState extends State<ClassifiedProducts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(
        title: 'Classified Products',
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 15),
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'Products',
              style: AppTextStyle.s14_w800(color: context.colors.black),
            ),
          ),
          const BuildRemainingUploads(),
          const BuildAddNewProduct(),
          const BuildPackageBtn(),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'All products',
              style: AppTextStyle.s14_w800(color: context.colors.black),
            ),
          ),
          const BuildProductView()
        ],
      ),
    );
  }
}
