part of 'imports.dart';

class PriceFinderSearchCardWidget extends StatelessWidget {
  const PriceFinderSearchCardWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(
        const SearchPageRoute(),
      ),
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(13),
          boxShadow: [
            BoxShadow(
              color: context.colors.black.withValues(alpha: 0.05),
              blurRadius: 8,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: GenericTextField(
          fillColor: context.colors.customBackground,
          suffixIcon: Padding(
            padding: const EdgeInsetsDirectional.only(
              end: 24,
            ),
            child: Transform.scale(
              scale: 0.75,
              child: SvgPicture.asset(
                Res.searchIcon,
              ),
            ),
          ),
          hint: tr("searchByProductNameOrBarcode"),
          maxLength: 2,
          fieldTypes: FieldTypes.clickable,
          type: TextInputType.text,
          action: TextInputAction.search,
          validate: (value) {},
        ),
      ),
    );
  }
}
