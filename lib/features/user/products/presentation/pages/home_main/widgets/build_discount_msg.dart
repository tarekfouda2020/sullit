part of 'home_main_widgets_imports.dart';

class BuildDiscountMsg extends StatelessWidget {
  const BuildDiscountMsg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var discount = context.watch<CountCubit>().state.discount;
    var auth = context.read<DeviceCubit>().state.model.auth;
    return Visibility(
      visible: !auth,
      child: Container(
        padding: Dimens.paddingAll13PX,
        margin: Dimens.marginBottom5,
        decoration: BoxDecoration(
          color: context.colors.blue.withOpacity(.2),
          borderRadius: Dimens.borderRadius3PX,
        ),
        child: Text(
          "Register now and get $discount% off on your first order",
          style: AppTextStyle.s12_w500(color: context.colors.black),
        ),
      ),
    );
  }
}
