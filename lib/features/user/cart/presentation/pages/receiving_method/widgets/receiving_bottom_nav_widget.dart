part of 'receiving_method_widgets_imports.dart';

class ReceivingBottomNavWidget extends StatelessWidget {
  final ReceivingMethodController controller;
  const ReceivingBottomNavWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return DefaultButton(
      title: tr("proceedToCheckout"),
      onTap: () => controller.onPressProceed(context),
    );
  }
}
