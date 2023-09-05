part of 'cart_payment_widgets_imports.dart';

class BuildPaymentItem extends StatelessWidget {
  final String img;
  final bool selected;
  final Function() onTap;

  const BuildPaymentItem(
      {super.key,
      required this.img,
      required this.selected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    Color borderColor = selected ? context.colors.primary : context.colors.greyWhite;
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          height: 70.h,
          padding: EdgeInsets.symmetric(horizontal: 20.r, vertical: 10.r),
          margin: EdgeInsetsDirectional.only(start: 10.w),
          decoration: BoxDecoration(
            border: Border.all(color: borderColor, width: 2),
            borderRadius: Dimens.borderRadius5PX,
          ),
          child: CachedImage(
            height: 80.h,
            width: 70.w,
            url : img,
          ),
        ),
      ),
    );
  }
}
