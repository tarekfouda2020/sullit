part of 'widgets_imports.dart';

class ReSendCodeTimerWidget extends StatelessWidget {
  final VerifyRegisterController controller;
  const ReSendCodeTimerWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<int>, GenericState<int>>(
      bloc: controller.counterCubit,
      builder: (context, state) {
        return Column(
          children: [
            Text(
              "${tr("resendCodeIn")} ${formattedTime()}",
              style: AppTextStyle.s14_w400(color: context.colors.textColor),
            ),
            Gaps.vGap20,
            Visibility(
              visible: state.data <= 0,
              child: InkWell(
                onTap: () => controller.resendCode(),
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
