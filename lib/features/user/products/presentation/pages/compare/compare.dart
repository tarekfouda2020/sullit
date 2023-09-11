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
    controller = CompareController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: "Compare", showBack: true),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          BuildResetButton(controller: controller),
          Flexible(
            child: GenericListView(
              type: ListViewType.api,
              onRefresh: controller.getComparedProducts,
              params: [context],
              cubit: controller.productsBloc,
              padding: Dimens.paddingHorizontal15PX,
              itemBuilder: (_, index, item) => BuildCompareItem(
                productModel: item,
                controller: controller,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
