part of 'login_widgets_imports.dart';


class SwitchPhoneEmailWidget extends StatelessWidget {
  final LoginController controller;

  const SwitchPhoneEmailWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      padding: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
          color: context.colors.white,
          border: Border.all(color: context.colors.borderColor),
          borderRadius: Dimens.borderRadius40PX
      ),
      child: BlocBuilder<GenericBloc<int>, GenericState<int>>(
        bloc: controller.switchEmailPhoneCubit,
        builder: (context, state) {
          return Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(controller.tabs.length, (index) {
              return BuildLoginTabs(
                height: 25, width:70 ,
                text: controller.emailAndPhone[index],
                selected: state.data == index,
                onTap: () => controller.switchEmailAndPhone(index),
              );
            }),
          );
        },
      ),
    );
  }
}
