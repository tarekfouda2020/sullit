part of 'receiving_method_widgets_imports.dart';

class ShippingAlertWidget extends StatelessWidget {
  final String title;
  const ShippingAlertWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        insetPadding: const EdgeInsets.only(right: 15, left: 15),
        contentPadding: EdgeInsets.zero,
        backgroundColor: context.colors.transparent,
        content: Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.only(top: 16,left: 18,right: 18,bottom: 16),
            decoration: BoxDecoration(color: context.colors.white, borderRadius: BorderRadius.circular(16)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                   GestureDetector(
                    onTap:  () => Navigator.pop(context),
                    child: Icon(
                      Icons.close,
                      color: context.colors.black,
                      size: 18.sp,
                    ),
                  ),
                  Gaps.vGap8,
                  Center(
                    child: Text(tr("notAllSellersDelivery"),
                      style: AppTextStyle.s16_w600(color: context.colors.black),)),
                  DefaultButton(title: "Ok",
                  height: 50,
                  onTap: () => Navigator.pop(context),
                  ),
                ])
        )
    );
  }
}
