part of 'delivery_widgets_imports.dart';

class DeliveryTimeAlertWidget extends StatelessWidget {
  final DeliveryController controller;
  const DeliveryTimeAlertWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: context.colors.white,
      contentPadding: Dimens.paddingAll15PX,
      insetPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 20),
      content: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Gaps.vGap3,
            Text(tr("delivery_time_alert"),
            textAlign: TextAlign.center,
            style: AppTextStyle.s18_w500(color: context.colors.black).copyWith(
              height: 1.5
            ),
            ),
       Gaps.vGap15,
       Row(
         spacing: 12,
         children: [
           Expanded(
             child: DefaultButton(
               title: tr('confirm'),
               height: 35.h,
               margin: EdgeInsets.zero,
               onTap: () {
                 Navigator.pop(context);
                 BuildContext ctx = getIt<GlobalContext>().context();
                 controller.setCartStoreShipping(ctx);
               },
             ),
           ),
           Expanded(
             child: DefaultButton(
               title: tr('cancel'),
               margin: EdgeInsets.zero,
               height: 35.h,
               onTap: () => Navigator.pop(context),
             ),
           ),
         ],
       )

          ],
        ),
      ),
    );
  }
}
