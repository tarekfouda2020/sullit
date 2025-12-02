part of 'category_details_imports.dart';

class CategoryDetails extends StatefulWidget {
  final Category categoryModel;
  final bool fromHome;

  const CategoryDetails(
      {super.key, required this.categoryModel, this.fromHome = false});

  @override
  _CategoryDetailsState createState() => _CategoryDetailsState();
}

class _CategoryDetailsState extends State<CategoryDetails> {
  late CategoryDetailsController controller;

  @override
  void initState() {
    super.initState();
    controller = CategoryDetailsController(context, widget.categoryModel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      key: controller.scaffold,
      drawerEnableOpenDragGesture: false,
      drawer: BuildFilterDrawer(categoryDetailsController: controller),
      appBar: DefaultAppBar(
        titleWidget: BlocBuilder<GenericBloc<String>, GenericState<String>>(
          bloc: controller.titleCubit,
          builder: (context, state) {
            return Text(
              state.data,
              style: AppTextStyle.s16_w800(color: context.colors.black),
            );
          },
        ),
        title: "",
        actions: [
          GestureDetector(
            onTap: () => controller.openDrawerFilter(),
            child: Padding(
              padding:  const EdgeInsets.all(Dimens.dp5),
              child: SvgPicture.asset(
                Res.filterIcon,
              ),
            ),
          ),
          Gaps.hGap20,
        ],
      ),
      body: Column(
        children: [
          Visibility(
            // visible: widget.fromHome,
            replacement: Gaps.vGap15,
            child: BuildAllCategoriesView(detailsController: controller),
          ),
          // BuildFilterBar(detailsController: controller),
          BuildProducts(detailsController: controller),
        ],
      ),
      floatingActionButton: const CartButtonWidget(size: 65,margin: EdgeInsetsDirectional.only(start: 5,bottom: 5),),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
