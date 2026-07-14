part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacySwitchButtonWidget extends StatelessWidget {
  final GenericBloc<bool> switchBloc;
  final void Function(bool value) onToggle;

  const PharmacySwitchButtonWidget({
    super.key,
    required this.switchBloc,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: switchBloc,
      builder: (context, state) {
        return FlutterSwitch(
          value: state.data,
          onToggle: (value) => onToggle(value),
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
