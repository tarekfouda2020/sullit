part of 'home_main_widgets_imports.dart';

class BuildHomeMainAppBar extends StatelessWidget {
  final HomeMainController homeMainController;
  const BuildHomeMainAppBar({Key? key, required this.homeMainController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: homeMainController.homeController.visibleSearch,
      builder: (context, state) {
        return Container(
          padding:
              const EdgeInsets.only(top: 10, left: 16, right: 16, bottom: 6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GenericTextField(
                  fieldTypes: FieldTypes.normal,
                  hintStyle:
                      AppTextStyle.s14_w400(color: context.colors.textColor),
                  type: TextInputType.text,
                  controller:
                      homeMainController.homeController.searchController,
                  action: TextInputAction.search,
                  radius: const BorderRadius.all(Radius.circular(30)),
                  validate: (value) {},
                  autoFocus: false,
                  fillColor: context.colors.white,
                  enableBorderColor: context.colors.borderColor,
                  focusBorderColor: context.colors.borderColor,
                  hint: tr('searchCats', context: context),
                  minHeight: 48,
                  minWidth: 20,
                  onSubmit: () => homeMainController.routeToSearchPage(context),
                  prefixIcon: GestureDetector(
                    onTap: () => homeMainController.routeToSearchPage(context),
                    child: Padding(
                      padding: const EdgeInsetsDirectional.only(start: 15),
                      child: Transform.scale(
                        scale: 0.9,
                        child: SvgPicture.asset(Res.searchIcon),
                      ),
                    ),
                  ),
                  suffixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 16),
                    child: GestureDetector(
                      onTap: () => homeMainController.scanProduct(context),
                      child: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset(Res.qrScanIcon),
                      ),
                    ),
                  ),
                ),
              ),
              Gaps.hGap10,
              // GestureDetector(
              //   onTap: () => homeMainController.routeToSearchPage(context),
              //   child: Icon(
              //     Icons.shopping_cart_outlined,
              //     color: context.colors.black,
              //   ),
              // ),
              GestureDetector(
                  onTap: () => homeMainController.goNotification(context),
                  child: Container(
                    height: 35,
                    width: 35,
                    padding: Dimens.paddingAll5PX,
                    decoration: BoxDecoration(
                      color: context.colors.bgIcon,
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(Res.notification),
                  )),
            ],
          ),
        );
      },
    );
  }
}
