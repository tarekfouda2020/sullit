part of 'widgets_imports.dart';

class PharmacyOrderDetailsDoneWidget extends StatelessWidget {
  final Orders data;
  final PharmacyOrderDetailsController controller;
  const PharmacyOrderDetailsDoneWidget({super.key, required this.data, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: Dimens.paddingAll20PX,
      margin:  EdgeInsets.only(top: data.pharmNormalOrder == true
          ? 0
          :43 ),
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
         if(data.pharmNormalOrder == false && (data.isConfirmed || data.isPlaced) )...[
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
                     text: data.orderDetails.isNotEmpty
                         ? data.orderDetails.first.product?.shop?.name ?? ""
                         : "",
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
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 13),
            decoration: BoxDecoration(
              color: _getReviewStatusColor(context),
              borderRadius: Dimens.borderRadius30PX,
            ),
            child: _reviewStatusWidget(context),
          ),
          Gaps.vGap20,
          if (data.pharmNormalOrder == false &&
              data.isPendingReview == false &&
              data.awaitingCustomerCompletion == true) ...[
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
              iconPath: Res.fileIcon,
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
    if (data.pharmNormalOrder) {
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(Res.layersIcon, width: 16, height: 16),
          Gaps.hGap5,
          Text(
            data.orderStatus,
            style: AppTextStyle.s14_w400(color: context.colors.green),
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
            style: AppTextStyle.s16_w400(color: context.colors.orange),
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
            style: AppTextStyle.s16_w400(color: context.colors.green),
          ),
        ],
      );
    }
  }

  Color _getReviewStatusColor(BuildContext context) {
    if (data.pharmNormalOrder == false && data.isPendingReview == true) {
      return context.colors.lightOrange;
    }
    return context.colors.lightGreen;
  }
}
