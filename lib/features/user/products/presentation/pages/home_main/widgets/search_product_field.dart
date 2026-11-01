part of 'home_main_widgets_imports.dart';

class SearchProductField extends StatelessWidget {
  final HomeMainController controller;

  const SearchProductField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return GenericTextField(
      fieldTypes: FieldTypes.normal,
      hintStyle: AppTextStyle.s14_w400(
        color: context.colors.textColor,
      ),
      type: TextInputType.text,
      controller: controller.homeController.searchController,
      action: TextInputAction.search,
      radius: const BorderRadius.all(
        Radius.circular(30),
      ),
      validate: (value) {},
      autoFocus: false,
      fillColor: context.colors.white,
      enableBorderColor: context.colors.borderColor,
      focusBorderColor: context.colors.borderColor,
      hint: tr(
        'searchProducts,Sellers&Offers...',
        context: context,
      ),
      minHeight: 48,
      minWidth: 20,
      onSubmit: () => controller.routeToSearchPage(context),
      prefixIcon: GestureDetector(
        onTap: () => controller.routeToSearchPage(context),
        child: Padding(
          padding: const EdgeInsetsDirectional.only(
            start: 15,
          ),
          child: Transform.scale(
            scale: 0.9,
            child: SvgPicture.asset(
              Res.searchIcon,
            ),
          ),
        ),
      ),
      suffixIcon: Padding(
        padding: const EdgeInsetsDirectional.only(
          end: 16,
        ),
        child: GestureDetector(
          onTap: () => controller.scanProduct(context),
          child: Transform.scale(
            scale: 0.7,
            child: SvgPicture.asset(
              Res.qrScanIcon,
            ),
          ),
        ),
      ),
    );
  }
}
