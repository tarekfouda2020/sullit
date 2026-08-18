part of 'widgets_imports.dart';

class CreatePrescriptionOrderButtonWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const CreatePrescriptionOrderButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: "Continue",
      onTap: () => controller.onPressContinue(context),
    );
  }
}
