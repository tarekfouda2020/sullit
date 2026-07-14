part of 'widgets_imports.dart';

class ChooseFromSavedPrescriptionsButtonWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const ChooseFromSavedPrescriptionsButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "Choose From Saved Prescriptions",
      onTap: () => controller.onPressChooseFromSavedPrescriptions(context),
      color: context.colors.white,
      borderColor: context.colors.primary,
      textColor: context.colors.primary,
      margin: EdgeInsets.zero,
    );
    // return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
    //   bloc: controller.hasSavedPrescriptionsCubit,
    //   builder: (context, state) {
    //     if (!state.data) return const SizedBox.shrink();
    //     return DefaultButton(
    //       title: "Choose From Saved Prescriptions",
    //       onTap: () => controller.onPressChooseFromSavedPrescriptions(context),
    //       color: context.colors.white,
    //       borderColor: context.colors.primary,
    //       textColor: context.colors.primary,
    //       margin: EdgeInsets.zero,
    //     );
    //   },
    // );
  }
}
