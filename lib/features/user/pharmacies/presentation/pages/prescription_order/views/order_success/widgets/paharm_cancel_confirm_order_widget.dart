part of 'widgets_imports.dart';

class PaharmCancelConfirmOrderWidget extends StatelessWidget {
  final OrderSuccessController controller;
  const PaharmCancelConfirmOrderWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 12,
      children: [
        DefaultButton(
          title: "Cancel Order",
          onTap: () {},
          textColor: context.colors.gray8,
          color: context.colors.white,
          borderColor: context.colors.gray8,
        ),
        DefaultButton(
          title: "Confirm & Pay Now",
          onTap: () {},
          textColor: context.colors.white,
          color: context.colors.green,
          borderColor: context.colors.green,
        ),
      ],
    );
  }
}
