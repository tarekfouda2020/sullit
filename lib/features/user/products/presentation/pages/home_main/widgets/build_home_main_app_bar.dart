part of 'home_main_widgets_imports.dart';

class BuildHomeMainAppBar extends StatelessWidget {
  final HomeController controller;
  final HomeMainController homeMainController;
  const BuildHomeMainAppBar({Key? key, required this.controller, required this.homeMainController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var countCubit = context.watch<CountCubit>().state;
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.visibleSearch,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(top: kToolbarHeight-30,left: 16,right: 16, bottom: 6),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GenericTextField(
                  fieldTypes: FieldTypes.normal,
                  hintStyle: AppTextStyle.s14_w400(color: context.colors.textColor),
                  type: TextInputType.text,
                  controller: controller.searchController,
                  action: TextInputAction.search,
                  radius: const BorderRadius.all(Radius.circular(30)),
                  validate: (value) {},
                  autoFocus: false,
                  fillColor: context.colors.white,
                  enableBorderColor: context.colors.borderColor,
                  focusBorderColor: context.colors.borderColor,
                  hint: tr('searchCats'),
                  suffixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(end: 16),
                    child: InkWell(
                      onTap: () => homeMainController.scanProduct(context),
                      child: Transform.scale(
                        scale: 0.7,
                        child: SvgPicture.asset(Res.qrScanIcon),
                      ),
                    ),
                  ),
                  prefixIcon: InkWell(
                    onTap: () => AutoRouter.of(context).push(
                      SearchRoute(
                        searchText: controller.searchController.text,
                      ),
                    ),
                    child: Transform.scale(
                      scale: 0.4,
                      child: SvgPicture.asset(Res.searchIcon),
                    ),
                  ),
                ),
              ),
              Gaps.hGap10,
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
                )),
            ],
          ),
        );
      },
    );
  }
}
