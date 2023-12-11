part of 'active_account_widgets_imports.dart';

class BuildActiveTimer extends StatelessWidget {
  final ActiveAccountController controller;
  final String phone;

  const BuildActiveTimer(
      {super.key, required this.controller, required this.phone});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: controller.counterCubit,
      builder: (context, state) {
        return Column(
          children: [
            Text(
              "Resend code in ${formattedTime()}",
              style: AppTextStyle.s14_w400(color: context.colors.textColor),
            ),
            Gaps.vGap20,
            Visibility(
              visible: state.data <= 0,
              child: InkWell(
                onTap: () => controller.onResendCode(phone),
                child: Text(
                  tr("resendCode"),
                  textAlign: TextAlign.center,
                  style: AppTextStyle.s15_w500(color: context.colors.primary),
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  String formattedTime() {
    int sec = controller.counterCubit.state.data % 60;
    int min = (controller.counterCubit.state.data / 60).floor();
    String minute = min.toString().length <= 1 ? "0$min" : "$min";
    String second = sec.toString().length <= 1 ? "0$sec" : "$sec";
    return "$minute:$second";
  }
}
