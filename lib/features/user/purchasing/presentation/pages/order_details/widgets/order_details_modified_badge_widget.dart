part of 'order_details_widgets_imports.dart';

class OrderDetailsModifiedBadgeWidget extends StatelessWidget {
  const OrderDetailsModifiedBadgeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: context.colors.primary.withOpacity(0.1),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        tr("modified"),
        style: AppTextStyle.s12_w600(color: context.colors.primary),
      ),
    );
  }
}
