part of 'product_details_widgets_imports.dart';

class BuildAttributeItems extends StatelessWidget {
  final ProductDetailsController controller;
  final List<Variant> variants;
  final int index;

  const BuildAttributeItems({
    super.key,
    required this.controller,
    required this.variants,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.onSelectAttributes(context, variants, index),
      child: Container(
        width: 230,
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        decoration: BoxDecoration(
          color:
              _isSelected ? context.colors.lightPrimary : context.colors.white,
          border: Border.all(
            color: _isSelected ? context.colors.primary : context.colors.gray3,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Directionality(
          textDirection: TextDirection.ltr,
          child: RichText(
            textAlign: TextAlign.center,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            text: TextSpan(
              style: _style(context).copyWith(height: 1.2),
              children: [
                TextSpan(
                  text: "${_variant.options ?? ''}  -  ".replaceAll(",", ", "),
                  style: _style(context),
                ),
                TextSpan(
                    text: AppTheme.dirhamIcon,
                    style: _style(context)
                        .copyWith(fontFamily: AppTheme.dirhamFontFamily)),
                TextSpan(
                  text: (_variant.calculablePrice ?? ''),
                  style: _style(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Variant get _variant => variants[index];

  bool get _isSelected => _variant.isSelected == true;

  AppTextStyle _style(BuildContext context) {
    return _isSelected
        ? AppTextStyle.s14_w700(color: context.colors.primary)
        : AppTextStyle.s14_w400(color: context.colors.gray5);
  }
}
