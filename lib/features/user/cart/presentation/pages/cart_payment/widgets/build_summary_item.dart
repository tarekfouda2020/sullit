part of 'cart_payment_widgets_imports.dart';

class BuildSummaryItem extends StatelessWidget {
  final String title;
  final String details;

  const BuildSummaryItem(
      {super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: -4),
      leading: Icon(Icons.circle,color: context.colors.primary,size: 10),
      minLeadingWidth: 10,
      title: Text(
        title,
        style: AppTextStyle.s15_w500(color: context.colors.black),
      ),
      trailing: Text(
        details,
        style: AppTextStyle.s15_w500(color: context.colors.black),
      ),
    );
  }
}
