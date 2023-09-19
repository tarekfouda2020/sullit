part of 'customer_product_details_w_imports.dart';

class BuildDetailsInfo extends StatelessWidget {
  final CustomerProduct detailsModel;

  const BuildDetailsInfo({super.key, required this.detailsModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll8PX,
      margin: Dimens.paddingVertical10PX,
      decoration: CustomDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            visualDensity: const VisualDensity(vertical: -4),
            leading: Text(
              detailsModel.name,
              style: AppTextStyle.s16_w500(color: context.colors.black),
            ),
            trailing: Text(
              detailsModel.unitPrice,
              style: AppTextStyle.s16_w500(color: context.colors.primary),
            ),
          ),
          BuildDetailsInfoItem(
            title: "${detailsModel.userData?.name}",
            iconData: Icons.person_outlined,
          ),
          BuildDetailsInfoItem(
            title:
                detailsModel.userData?.address?.address ?? "Not Determined Yet",
            iconData: Icons.location_on_outlined,
          ),
          BuildDetailsInfoItem(
            title: detailsModel.userData?.phone ?? "Not Determined Yet",
            iconData: Icons.phone,
          ),

        ],
      ),
    );
  }
}
