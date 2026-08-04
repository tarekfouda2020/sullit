part of 'active_account_widgets_imports.dart';

class BuildActiveButton extends StatelessWidget {
  final ActiveAccountController controller;
  final String phone;
  final bool isForget;
  const BuildActiveButton(
      {Key? key,
      required this.controller,
      required this.phone,
      required this.isForget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.codeCubit,
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: !state.data,
          child: DefaultButton(
            borderRadius: BorderRadius.circular(40),
            title: tr('verify'),
            onTap: () => controller.setVerifyPhone(phone, context, isForget),
            color: !state.data ? context.colors.grey : context.colors.primary,
            textColor: context.colors.white,
            margin: const EdgeInsets.only(top: 40),
            fontSize: 16,
            height: 48,
            width: 200,
          ),
        );
      },
    );
  }
}
