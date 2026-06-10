part of 'widgets_imports.dart';

class PharmacyOrderDoneWidget extends StatelessWidget {
  final OrderSummaryDomainModel data;
  final OrderSuccessController controller;
  const PharmacyOrderDoneWidget({super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20PX,
      margin: const EdgeInsets.only(top: 43),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius10PX.copyWith(
          bottomLeft: Radius.zero,
          bottomRight: Radius.zero,
        ),
      ),
      child: Column(
        children: [
          Gaps.vGap20,
          Text(
            "Thank You For Your Order!",
            style: AppTextStyle.s20_w700(color: context.colors.black),
          ),
          Gaps.vGap10,
          Visibility(
            visible: data.pharmNormalOrder,
            replacement: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: data.sectionOrders?.first.orderDetails.first.product?.shop?.name ?? "",
                    style: AppTextStyle.s14_w600(color: context.colors.green),
                  ),
                  TextSpan(
                    text: _getText(),
                    style: AppTextStyle.s14_w400(color: context.colors.textColor)
                        .copyWith(height: 1.3),
                  ),
                ],
              ),
            ),
            child: Text(
              "Your shipment is being prepared for delivery.",
              style: AppTextStyle.s14_w400(color: context.colors.textColor),
            ),
          ),
          Gaps.vGap20,
          Text(
            "ORDER NUMBER",
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
          ),
          Gaps.vGap10,
          Text(
            "#${data.sectionOrders?.first.code??""}",
            style: AppTextStyle.s22_w700(color: context.colors.black),
          ),
          Gaps.vGap20,
          Container(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
            decoration: BoxDecoration(
              color:  _getReviewStatusColor(context),
              borderRadius: Dimens.borderRadius30PX,
            ),
            child: _reviewStatusWidget(context),
          ),
          Gaps.vGap20,
          if(data.pharmNormalOrder == false && data.summary?.isPendingReview == false && data.summary?.awaitingCustomerCompletion == true)...[
            const AfterReviewHintWidget(title: "select payment method to proceed to checkout , You must talk action within 24 hours or order will be automatically cancelled",),
            Gaps.vGap20,
            Divider(color: context.colors.greyWhite),
            Gaps.vGap20,
          ],
          _buildRow(context, "Date", data.summary?.orderDate ?? ""),
          Gaps.vGap10,
          if(data.pharmNormalOrder) ...[
            _buildRow(context, "Status :", data.summary?.orderStatus ??""),
            Gaps.vGap10,
          ],
          _buildRow(context, "Total Items", data.getTotalItems().toString()),
          Gaps.vGap10,
          if(data.pharmNormalOrder) ...[
            _buildRow(context, "Receipt Status", data.summary?.orderStatus ??""),
            Gaps.vGap10,
            _buildRow(context, "Address", data.summary?.shippingAddress ??""),
            Gaps.vGap10,
            _buildRow(context, "Phone", data.summary?.phone ??""),
            Gaps.vGap10,
            _buildRow(context, "Payment Method", data.summary?.paymentMethod ??""),
          ],
          Gaps.vGap10,
         if(data.summary?.insuranceApplied == true && data.sectionOrders?.first.insuranceCompany != null)...[
           _buildRow(context, "Insurance Company", data.sectionOrders?.first.insuranceCompany?.name ??""),
         ],
          if(data.pharmOrderWithPrescription == true) ...[
            PharmacyOrderAttachmentWidget(
              title: "View Prescription Doc.",
              iconPath: Res.fileIcon,
              onTap: () => controller.openAttachment(context, (data.sectionOrders??[]).first.prescriptionAttachments!.first) ,
            )
          ],
          if(data.pharmOrderWithInsurance == true) ...[
            Gaps.vGap10,
            PharmacyOrderAttachmentWidget(
              title: "View Health Insurance Doc.",
              iconPath: Res.fileIcon,
              onTap: () => controller.openAttachment(context, (data.sectionOrders??[]).first.insuranceAttachments!.first) ,
            )
          ]
        ],
      ),
    );
  }

  Widget _buildRow(BuildContext context, String title, String value) {
    return Row(
      spacing: 7,
      children: [
        Text(
          "$title :",
          style: AppTextStyle.s14_w400(color: context.colors.black),
        ),
        Flexible(
          child: Text(
            value,
            style: AppTextStyle.s14_w600(color: context.colors.black),
          ),
        ),
      ],
    );
  }



  String _getText() {
     bool hasPrescription = data.summary?.requiresPrescriptionReview == true;
     bool hasInsurance = data.summary?.insuranceApplied == true;
     bool isPendingReview = data.summary?.isPendingReview == true;

    if (hasPrescription && hasInsurance) {
      return isPendingReview == false
          ? " accepted your health insurance and Prescription document successfully"
          : " will review health insurance and your Prescription document and back to you Shortly";
    }
    return isPendingReview == false && hasPrescription
        ? " accepted your Prescription document successfully"
        : " will review your prescription documents. We'll get back to you shortly.";
  }


  Widget _reviewStatusWidget(BuildContext context) {
    if(data.pharmNormalOrder) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(Res.layersIcon,
            width: 16,
            height: 16,
          ),
          Gaps.hGap5,
          Text(
            data.summary?.orderStatus ??"",
            style: AppTextStyle.s14_w400(color: context.colors.green),
          ),
        ],
      );
    }else if(data.pharmNormalOrder == false){
       if(data.summary?.isPendingReview == true){
         return Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             CircleAvatar(
               radius: 4,
               backgroundColor: context.colors.orange,
             ),
             Gaps.hGap5,
             Text(
               "Under Reviewing",
               style: AppTextStyle.s16_w400(color: context.colors.orange),
             ),
           ],
         );
       }else{
         return Row(
           mainAxisSize: MainAxisSize.min,
           children: [
             SvgPicture.asset(Res.layersIcon,
               width: 16,
               height: 16,
             ),
             Gaps.hGap5,
             Text(
               data.summary?.orderStatus ??"",
               style: AppTextStyle.s16_w400(color: context.colors.green),
             ),
           ],
         );
       }
    }else{
      return Gaps.empty;
    }
}



Color _getReviewStatusColor(BuildContext context) {
    if(data.pharmNormalOrder == false) {
    if(data.summary?.isPendingReview == true){
      return context.colors.lightOrange;
    }else{
      return context.colors.lightGreen;
    }
  }else{
      return context.colors.lightGreen;
    }
}



}
