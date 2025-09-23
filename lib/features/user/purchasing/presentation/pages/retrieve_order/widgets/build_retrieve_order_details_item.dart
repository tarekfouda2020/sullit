part of 'retrieve_order_widgets_imports.dart';

class BuildRetrieveOrderDetailsItem extends StatelessWidget {
  final String title;
  final String details;

  const BuildRetrieveOrderDetailsItem(
      {super.key, required this.title, required this.details});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Dimens.paddingVertical5PX,
      child: Row(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.s13_w500(color: context.colors.black),
          ),
          Flexible(
            child: Text(
              details,
              style: AppTextStyle.s13_w400(color: context.colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
