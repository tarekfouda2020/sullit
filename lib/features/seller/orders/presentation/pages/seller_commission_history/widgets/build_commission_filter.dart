part of 'seller_commission_history_widgets_imports.dart';

class BuildCommissionFilter extends StatelessWidget {
  final SellerCommissionHistoryController sellerCommissionHistoryController;
  const BuildCommissionFilter(
      {Key? key, required this.sellerCommissionHistoryController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
      child: Column(
        children: [
          GenericTextField(
            onTab: () {
              showModalBottomSheet(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20).r,
                          topRight: Radius.circular(20).r)),
                  context: context,
                  builder: (context) {
                    return BuildCommissionDateFilterDialog(
                      sellerCommissionHistoryController:
                          sellerCommissionHistoryController,
                    );
                  });
            },
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 10).r,
            fieldTypes: FieldTypes.clickable,
            type: TextInputType.text,
            action: TextInputAction.next,
            validate: (value) => value?.noValidate(),
            hint: "Date Range",
            margin: const EdgeInsets.symmetric(vertical: 10).r,
          ),
          DefaultButton(
              title: "Filter ",
              width: 120.w,
              height: 30.h,
              fontSize: 12,
              color: context.colors.darkPurple,
              borderRadius: BorderRadius.circular(5).r,
              margin: const EdgeInsets.symmetric(vertical: 10).r,
              onTap: () {}),
        ],
      ),
    );
  }
}
