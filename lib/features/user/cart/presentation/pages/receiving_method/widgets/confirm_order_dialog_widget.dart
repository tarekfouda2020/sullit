part of 'receiving_method_widgets_imports.dart';

class ShippingAlertWidget extends StatelessWidget {
  final String title;
  final ReceivingMethodController receivingMethodController;
  const ShippingAlertWidget({super.key, required this.title, required this.receivingMethodController});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        insetPadding: const EdgeInsets.only(right: 15, left: 15),
        contentPadding: EdgeInsets.zero,
        backgroundColor: context.colors.transparent,
        content: Container(
            width: MediaQuery.sizeOf(context).width,
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
                    child: Text(receivingMethodController.pickupController.sellerShippingBloc.state.data.first.deliveryMessage,

                      style: AppTextStyle.s16_w600(color: context.colors.black),
                    )
                  ),
                  Gaps.vGap8,
                  Row(
                    children: [
                      Expanded(
                        child: DefaultButton(title: "select pickup points",
                        height: 50,
                          fontSize: 12,
                        onTap: () => Navigator.pop(context),
                        ),
                      ),
                      Gaps.hGap10,
                      Expanded(
                        child: DefaultButton(title: "select another address",
                          height: 50,
                          fontSize: 12,
                          onTap: () {
                            Navigator.pop(context);
                            receivingMethodController.changeTabCubit.onUpdateData(0);
                          },
                        ),
                      ),
                    ],
                  ),
                ])
        )
    );
  }
}
