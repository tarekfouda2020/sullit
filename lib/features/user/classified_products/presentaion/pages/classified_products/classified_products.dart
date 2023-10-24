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
      appBar: DefaultAppBar(title: tr('classifiedProducts')),
      body: BlocBuilder<GenericBloc<ClassifiedProductsDomainModel?>,
          GenericState<ClassifiedProductsDomainModel?>>(
        bloc: controller.classifiedProductsBloc,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return ListView(
              physics: const BouncingScrollPhysics(),
              padding: Dimens.paddingAll15PX,
              children: [
                BuildRemainingUploads(uploads: state.data!.remainingUploads),
                BuildAddNewProduct(controller: controller),
                BuildPackageBtn(
                  package: state.data!.currentPackage?.name,
                  controller: controller,
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
