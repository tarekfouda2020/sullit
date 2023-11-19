part of 'home_main_widgets_imports.dart';

class BuildHomeMainAppBar extends StatelessWidget {
  final HomeController controller;

  const BuildHomeMainAppBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                    InkWell(
                        onTap: () =>
                            controller.scaffoldKey.currentState?.openDrawer(),
                        child: Image.asset(Res.logo, height: 30, width: 120)),
                    const Spacer(),
                    buildIcon(
                      context,
                      Res.cart,
                      onTap: () => AutoRouter.of(context).push(
                        const CartRoute(),
                      ),
                    ),
                    Gaps.hGap8,
                    buildIcon(
                      context,
                      Res.notification,
                      onTap: () => controller.goNotification(context),
                    ),
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
                onSubmit: () => controller.visibleSearch.onUpdateData(
                  !state.data,
                ),
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

  InkWell buildIcon(BuildContext context, String icon,
      {void Function()? onTap}) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 30,
        width: 30,
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: context.colors.bgIcon,
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(icon),
      ),
    );
  }
}
