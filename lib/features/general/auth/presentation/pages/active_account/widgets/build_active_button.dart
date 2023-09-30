part of 'active_account_widgets_imports.dart';

class BuildActiveButton extends StatelessWidget {
  final ActiveAccountController controller;
  final String phone ;
  const BuildActiveButton({Key? key, required this.controller, required this.phone}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.codeCubit,
      builder: (context, state) {
        return AbsorbPointer(
          absorbing: !state.data,
          child: LoadingButton(
              title: tr('verify'),
              onTap: () => controller.setVerifyPhone(phone,context),
              color: !state.data? context.colors.grey :context.colors.primary,
              textColor: context.colors.white,
              btnKey: controller.btnKey,
              margin: const EdgeInsets.only(top: 40),
              fontSize: 16,
              height: 55
          ),
        );
      },
    );
  }
}
