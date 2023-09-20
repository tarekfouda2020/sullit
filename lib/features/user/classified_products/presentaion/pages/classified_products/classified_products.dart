part of 'classified_products_imports.dart';

class ClassifiedProducts extends StatefulWidget {
  const ClassifiedProducts({Key? key}) : super(key: key);

  @override
  State<ClassifiedProducts> createState() => _ClassifiedProductsState();
}

class _ClassifiedProductsState extends State<ClassifiedProducts> {
  late ClassifiesProductsController controller;

  @override
  void initState() {
    controller = ClassifiesProductsController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(
        title: 'Classified Products',
      ),
      body: BlocBuilder<GenericBloc<ClassifiedProductsDomainModel?>,
          GenericState<ClassifiedProductsDomainModel?>>(
        bloc: controller.classifiedProductsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              physics: const BouncingScrollPhysics(),
              padding: Dimens.standardPadding,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Products',
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                BuildRemainingUploads(
                  uploads: state.data!.remainingUploads,
                ),
                BuildAddNewProduct(
                  uploads: state.data!.remainingUploads,
                ),
                BuildPackageBtn(
                  package: state.data!.currentPackage?.name,
                  controller: controller,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'All products',
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                BuildProductView(
                  products: state.data!.sectionsProducts.products,
                  controller: controller,
                ),
              ],
            );
          } else {
            return const BuildClassifiedProductsLoading();
          }
        },
      ),
    );
  }
}
