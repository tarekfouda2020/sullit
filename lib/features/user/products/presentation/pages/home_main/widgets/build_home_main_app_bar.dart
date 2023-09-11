part of 'home_main_widgets_imports.dart';

class BuildHomeMainAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  final HomeController controller;

  const BuildHomeMainAppBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.visibleSearch,
      builder: (context, state) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            AppBar(
              elevation: 0.2,
              backgroundColor: context.colors.white,
              toolbarHeight: 70,
              leading: IconButton(
                onPressed: () =>
                    controller.scaffoldKey.currentState!.openDrawer(),
                icon: Icon(
                  Icons.menu,
                  color: context.colors.black,
                  size: 25,
                ),
              ),
              title: Image.asset(Res.suliitLogo, height: 30, width: 150),
              actions: [
                IconButton(
                  onPressed: () =>
                      controller.visibleSearch.onUpdateData(!state.data),
                  icon: Icon(
                    state.data ? Icons.clear : Icons.search,
                    color: context.colors.black,
                    size: 25,
                  ),
                ),
              ],
            ),
            Visibility(
              visible: state.data,
              child: GenericTextField(
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                controller: controller.searchController,
                action: TextInputAction.search,
                validate: (value) {},
                autoFocus: false,
                fillColor: context.colors.white,
                margin: Dimens.standardPadding,
                hint: "Search...",
                suffixIcon: InkWell(
                  onTap: () => AutoRouter.of(context).push(
                    SearchRoute(
                      searchText: controller.searchController.text,
                    ),
                  ),
                  child: Icon(
                    Icons.search,
                    color: context.colors.black,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 10);
}
