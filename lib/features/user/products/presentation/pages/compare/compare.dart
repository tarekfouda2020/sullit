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
      appBar: const DefaultAppBar(title: "Compare", showBack: true),
      body: BlocBuilder<GenericBloc<List<Product>>, GenericState<List<Product>>>(
        bloc: controller.productsBloc,
        builder: (context, state) {
          return Visibility(
            visible: state.data.isNotEmpty,
            replacement:  Container(
              alignment: Alignment.center,
              child: Image.asset(Res.emptyCart, scale: 3),
            ),
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
                      childAspectRatio: .9,
                    ),
                    itemBuilder: (context, index) => BuildProductItem(
                      productModel: state.data[index],
                      isForCompare: true,
                      onFavRefresh: () => controller.onFavChanged(state.data[index]),
                      onCompareRefresh: () {
                        state.data[index].isAddedTCompare =
                        !state.data[index].isAddedTCompare!;
                      },
                    ),
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
