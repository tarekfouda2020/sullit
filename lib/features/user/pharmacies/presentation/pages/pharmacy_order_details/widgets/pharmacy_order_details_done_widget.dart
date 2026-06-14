part of 'widgets_imports.dart';

class PharmacyOrderDetailsDoneWidget extends StatelessWidget {
  final Orders data;
  final PharmacyOrderDetailsController controller;
  const PharmacyOrderDetailsDoneWidget({super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin:  EdgeInsets.only(top: data.pharmNormalOrder == true
          ? 0
          :43 ),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: Dimens.borderRadius12PX,
        border: Border.all(color: context.colors.gray3)
      ),
      child: Column(
        children: [
          Gaps.vGap20,
         if(data.pharmNormalOrder == false && (data.isConfirmed || data.isPlaced || data.isCanceled) )...[
           Text(
             data.isCanceled
                 ? "Order Rejected"
                 : "Thank You For Your Order!",
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
                     text: data.orderDetails.isNotEmpty
                         ? "${data.orderDetails.first.product?.shop?.name  ?? ""} "
                         : "",
                     style: AppTextStyle.s14_w600(color: context.colors.mainGreen),
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
         ],
          Text(
            "ORDER NUMBER",
            style: AppTextStyle.s14_w400(color: context.colors.textColor),
          ),
          Gaps.vGap10,
          Text(
            "#${data.code}",
            style: AppTextStyle.s22_w700(color: context.colors.black),
          ),
          Gaps.vGap20,
          Container(
            padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
            decoration: BoxDecoration(
              color: _getReviewStatusColor(context),
              borderRadius: Dimens.borderRadius30PX,
            ),
            child: _reviewStatusWidget(context),
          ),
          if(data.pharmNormalOrder == false)...[
            Gaps.vGap20,
            Divider(color:context.colors.softGray,height: 1,thickness: 0.8,)
          ],
          Gaps.vGap20,
          if (data.pharmNormalOrder == false &&
              data.isPendingReview == false &&
              data.awaitingCustomerCompletion == true && data.isCanceled == false) ...[
            const AfterReviewHintWidget(
              title: "select payment method to proceed to checkout , You must talk action within 24 hours or order will be automatically cancelled",
            ),
            Gaps.vGap20,
            Divider(color: context.colors.greyWhite),
            Gaps.vGap20,
          ],
          _buildRow(context, "Date", data.orderDate),
          Gaps.vGap10,
          if (data.pharmNormalOrder) ...[
            _buildRow(context, "Status :", data.orderStatus),
            Gaps.vGap10,
          ],
          _buildRow(context, "Total Items", data.totalItemsCount().toString()),
          Gaps.vGap10,
          if (data.pharmNormalOrder) ...[
            _buildRow(context, "Receipt Status", data.orderStatus),
            Gaps.vGap10,
            _buildRow(context, "Address", data.shippingAddress),
            Gaps.vGap10,
            _buildRow(context, "Phone", data.customerPhone),
            Gaps.vGap10,
            _buildRow(context, "Payment Method", data.paymentMethod),
          ],
          Gaps.vGap10,
          if (data.insuranceApplied == true && data.insuranceCompany!= null) ...[
            _buildRow(context, "Insurance Company", data.insuranceCompany?.name ?? ""),
            Gaps.vGap10,
          ],
          if(data.pharmOrderWithPrescription == true) ...[
            PharmacyOrderAttachmentWidget(
                title: "View Prescription Doc.",
                iconPath: Res.fileIcon,
                onTap: () => controller.openAttachment(context, data.prescriptionAttachments!.first) ,
            )
          ],
          if(data.pharmOrderWithInsurance == true) ...[
            Gaps.vGap10,
            PharmacyOrderAttachmentWidget(
              title: "View Health Insurance Doc.",
              iconPath: Res.medicFile,
              onTap: () => controller.openAttachment(context, data.insuranceAttachments!.first) ,
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
     bool hasPrescription = data.requiresPrescriptionReview == true;
     bool hasInsurance = data.insuranceApplied == true;
     bool isPendingReview = data.isPendingReview == true;
     if(data.isCanceled == true){
       return data.cancelReason ?? "Your Order Have Been Cancelled";
     }

    if (hasPrescription && hasInsurance) {
      return isPendingReview == false
          ? "accepted your health insurance and Prescription document successfully"
          : "will review health insurance and your Prescription document and back to you Shortly";
    }
    return isPendingReview == false && hasPrescription
        ? "accepted your Prescription document successfully"
        : "will review your prescription documents. We'll get back to you shortly.";
  }

  Widget _reviewStatusWidget(BuildContext context) {
    if(data.isCanceled == true){
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 4, backgroundColor: context.colors.bloodyRed),
          Gaps.hGap5,
          Text(
            data.orderStatus,
            style: AppTextStyle.s16_w600(color: context.colors.primary),
          ),
        ],
      );
    }
    if (data.pharmNormalOrder) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(Res.layersIcon, width: 16, height: 16),
          Gaps.hGap5,
          Text(
            data.orderStatus,
            style: AppTextStyle.s14_w600(color: context.colors.mainGreen),
          ),
        ],
      );
    } else if (data.isPendingReview == true) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 4, backgroundColor: context.colors.orange),
          Gaps.hGap5,
          Text(
            "Under Reviewing",
            style: AppTextStyle.s16_w600(color: context.colors.orange),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(Res.layersIcon, width: 16, height: 16),
          Gaps.hGap5,
          Text(
            data.orderStatus,
            style: AppTextStyle.s16_w400(color: context.colors.mainGreen),
          ),
        ],
      );
    }
  }

  Color _getReviewStatusColor(BuildContext context) {
    if (data.pharmNormalOrder == false && data.isPendingReview == true) {
      return context.colors.lightOrange;
    }
    if(data.isCanceled == true){
      return const Color(0xffFFE4E5);
    }
    return context.colors.lightGreen;
  }
}
