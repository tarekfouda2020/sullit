part of 'home_main_widgets_imports.dart';

class BuildHomeMainAppBar extends StatelessWidget {
  final HomeController controller;

  const BuildHomeMainAppBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var countCubit = context.watch<CountCubit>().state;
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.visibleSearch,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 23),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () =>
                          controller.scaffoldKey.currentState!.openDrawer(),
                      icon: Icon(
                        Icons.menu,
                        color: context.colors.black,
                        size: 25,
                      ),
                    ),
                    Expanded(
                      child: Image.asset(Res.logo, height: 30, width: 120),
                    ),
                    BuildHeaderIcon(
                      image: Res.cart,
                      count: countCubit.cartCount,
                      onTap: () => AutoRouter.of(context).push(
                        const CartRoute(),
                      ),
                    ),
                    Gaps.hGap8,
                    InkWell(
                      onTap: () => controller.goNotification(context),
                      child: Container(
                        height: 35,
                        width: 35,
                        padding: Dimens.paddingAll5PX,
                        decoration: BoxDecoration(
                          color: context.colors.bgIcon,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(Res.notification),
                      ),
                    ),
                    // BuildHeaderIcon(
                    //   count: countCubit.favCount,
                    //   image: Res.notification,
                    //   onTap: () => controller.goNotification(context),
                    // ),
                  ],
                ),
              ),
              GenericTextField(
                fieldTypes: FieldTypes.normal,
                type: TextInputType.text,
                controller: controller.searchController,
                action: TextInputAction.search,
                validate: (value) {},
                autoFocus: false,
                fillColor: context.colors.white,
                margin: const EdgeInsets.only(bottom: 8),
                hint: tr('searchCats'),
                suffixIcon: InkWell(
                  onTap: () => AutoRouter.of(context).push(
                    SearchRoute(
                      searchText: controller.searchController.text,
                    ),
                  ),
                  child: Transform.scale(
                    scale: 0.4,
                    child: SvgPicture.asset(Res.search),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
