part of 'login_widgets_imports.dart';


class SwitchPhoneEmailWidget extends StatelessWidget {
  final LoginController controller;

  const SwitchPhoneEmailWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 320,
          child: Text(tr("loginWithEmailOrPhone"),
          style: AppTextStyle.s13_w400(color: context.colors.textColor),
          ),
        ),
        Gaps.vGap16,
        BlocBuilder<GenericBloc<int>, GenericState<int>>(
          bloc: controller.switchEmailPhoneCubit,
          builder: (context, state) {
            return Row(
             spacing: 24,
              children: List.generate(controller.emailAndPhone.length, (index) {
                return GestureDetector(
                  onTap: () => controller.switchEmailAndPhone(index),
                  child: Row(
                    children: [
                      CustomRadioWidget(selected: state.data==index),
                      Gaps.hGap8,
                      Text(controller.emailAndPhone[index],
                        style: AppTextStyle.s14_w700(color: context.colors.black),
                      )
                    ],
                  ),
                );
              }),
            );
          },
        ),
      ],
    );
  }
}
