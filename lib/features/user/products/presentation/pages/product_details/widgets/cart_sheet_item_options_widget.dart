part of 'product_details_widgets_imports.dart';

class CartSheetItemOptionsWidget extends StatelessWidget {
  final List<CartOption> cartOptions;

  const CartSheetItemOptionsWidget({
    super.key,
    required this.cartOptions,
  });

  @override
  Widget build(BuildContext context) {
    if (_values.isEmpty) return const SizedBox.shrink();
    return Wrap(
      runSpacing: 5,
      children: List.generate(_values.length, (index) {
        return Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              _values[index].name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s13_w400(
                color: context.colors.textColor,
              ),
            ),
            Gaps.hGap5,
            DirhamPrice(
              amount: _values[index].price,
              textStyle: AppTextStyle.s13_w400(
                color: context.colors.textColor,
              ),
              currencyStyle: AppTextStyle.s13_w400(
                color: context.colors.textColor,
              ),
            ),
            if(index != _values.length-1)
            Text(
              " - ",
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyle.s13_w400(
                color: context.colors.textColor,
              ),
            )
          ],
        );
      },),

    );
  }

  List<CartOptionValue> get _values => cartOptions.expand((e) => e.values).toList();
}
