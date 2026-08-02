part of 'compare_imports.dart';

class Compare extends StatefulWidget {
  const Compare({Key? key}) : super(key: key);

  @override
  State<Compare> createState() => _CompareState();
}

class _CompareState extends State<Compare> {
  late CompareController controller;

  @override
  void initState() {
    controller = CompareController(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(title: tr('compare'), showBack: true),
      body:
          BlocBuilder<GenericBloc<List<ProductCard>>, GenericState<List<ProductCard>>>(
        bloc: controller.productsBloc,
        builder: (context, state) {
          return Visibility(
            visible: state.data.isNotEmpty,
            replacement: const BuildEmptyDataImage(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                BuildResetButton(controller: controller),
                Flexible(
                  child: GridView.builder(
                    itemCount: state.data.length,
                    padding: Dimens.standardPadding,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15.r,
                      mainAxisSpacing: 15.r,
                      crossAxisCount: 2,
                      childAspectRatio: .75,
                    ),
                    itemBuilder: (context, index) => BuildProductItem(
                        productModel: state.data[index],
                        onFavRefresh: () =>
                            controller.onFavChanged(state.data[index]),
                        onCompareRefresh: () =>
                            controller.onCompareChanged(state.data[index])),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
