part of 'cart_payment_widgets_imports.dart';

class SwitchButtonWidget extends StatelessWidget {
  final GenericBloc<bool> switchBloc;
  final CartPaymentController controller;
  const SwitchButtonWidget({super.key, required this.switchBloc, required this.controller});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: switchBloc,
      builder: (context, state) {
        return FlutterSwitch(
          value: state.data,
          onToggle: (value) => controller.switchApplyPoints(),
          width: 32,
          height: 18,
          toggleSize: 18,
          toggleBorder: Border.all(
            color: context.colors.borderColor,
          ),
          activeColor: context.colors.primary,
          inactiveToggleColor: const Color(0xffF0F0F0),
          inactiveColor: const Color(0xffDBD6D6),
          padding: 0,
        );
      },
    );
  }
}
