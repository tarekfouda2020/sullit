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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Gaps.vGap20,
         if(data.pharmNormalOrder == false && (data.isConfirmed || data.isPlaced || data.isCanceled) )...[
           Gaps.vGap20,
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Text(
                 data.isCanceled
                     ? "Order Rejected"
                     : "Thank You For Your Order!",
                 style: AppTextStyle.s20_w700(color: context.colors.black),
               ),
             ],
           ),
           _buildVGap10(),
           Visibility(
             visible: data.pharmNormalOrder,
             replacement: RichText(
               textAlign: TextAlign.center,
               text: TextSpan(
                 children: [
                   TextSpan(
                     text: "${_pharmName()  ?? ""} ",
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
             child: Row(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Text(
                   "Your shipment is being prepared for delivery.",
                   style: AppTextStyle.s14_w400(color: context.colors.textColor),
                 ),
               ],
             ),
           ),
           Gaps.vGap20,
           if(data.isCanceled && data.cancelReason?.isNotEmpty == true)
             RejectionReasonsWidget(
               title: 'Rejection Reasons :',
               reasons: [data.cancelReason?? ""],
             )
         ],

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "ORDER NUMBER",
                style: AppTextStyle.s14_w400(color: context.colors.textColor),
              ),
            ],
          ),
          _buildVGap10(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "#${data.code}",
                style: AppTextStyle.s22_w700(color: context.colors.black),
              ),
            ],
          ),
          Gaps.vGap20,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 13),
                decoration: BoxDecoration(
                  color: _getReviewStatusColor(context),
                  borderRadius: Dimens.borderRadius30PX,
                ),
                child: _reviewStatusWidget(context),
              ),
            ],
          ),

          if (_showActionRequiredText())...[
            Gaps.vGap20,
            const AfterReviewHintWidget(
              title: "Acceptance is valid for 24 hours",
            ),
          ],
          if(data.pharmNormalOrder == false)...[
            Gaps.vGap20,
            Divider(color:context.colors.softGray,height: 1,thickness: 0.8,)
          ],
          Gaps.vGap20,
          _buildRow(context, "Date", data.orderDate),
          _buildVGap10(),
          if (data.pharmNormalOrder) ...[
            _buildRow(context, "Status :", data.orderStatus),
            _buildVGap10(),
          ],
          if(data.totalItemsCount() > 0 )...[
            _buildRow(context, "Total Items", data.totalItemsCount().toString()),
            _buildVGap10(),
          ],
           if(data.requestedByLabel?.isNotEmpty == true)...[
             _buildRow(context, "Requested By", data.requestedByLabel ?? ""),
             _buildVGap10(),
           ],
          _buildRow(context, "Receipt Status", data.orderStatus),
          if(data.shippingAddress.isNotEmpty)...[
            _buildVGap10(),
            _buildRow(context, "Address", data.shippingAddress),
          ],
          _buildVGap10(),
          _buildRow(context, "Phone", data.customerPhone),
          _buildVGap10(),
          if(data.paymentMethod.isNotEmpty == true)...[
            _buildRow(context, "Payment Method", data.paymentMethod),
            _buildVGap10(),
          ],
          if (data.insuranceApplied == true && data.insuranceCompany != null) ...[
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Insurance Company : ",
                    style: AppTextStyle.s14_w400(color: context.colors.black),
                  ),
                  TextSpan(
                    text: data.insuranceCompany?.name ?? "",
                    style: AppTextStyle.s14_w600(color: context.colors.black).copyWith(height: 1.1),
                  ),
                ],
              ),
            ),
            _buildVGap10(),
          ],
          if(data.pharmOrderWithPrescription == true) ...[
            PharmacyOrderAttachmentWidget(
                title: "View Prescription Doc.",
                iconPath: Res.fileIcon,
                onTap: () => controller.openAttachment(context, data.prescriptionAttachments!.first) ,
            )
          ],
          if(data.pharmOrderWithInsurance == true) ...[
            _buildVGap10(),
            PharmacyOrderAttachmentWidget(
              title: "View Health Insurance Doc.",
              iconPath: Res.medicFile,
              onTap: () => controller.openAttachment(context, data.insuranceAttachments!.first) ,
            )
          ],
          if(data.identityDocumentFile?.isNotEmpty == true) ...[
            _buildVGap10(),
            PharmacyOrderAttachmentWidget(
              title: "View National ID",
              iconPath: Res.fileIcon,
              onTap: () => controller.openIdentityDocument(context, data.identityDocumentFile!),
            )
          ]
        ],
      ),
    );
  }

  String? _pharmName() => data.branch?.name ?? "";

  Widget _buildVGap10() => Gaps.vGap10;

  bool _showActionRequiredText() {
    return data.pharmNormalOrder == false &&
            data.isPendingReview == false &&
            data.awaitingCustomerCompletion == true && data.isCanceled == false;
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
       return  "Rejected your health insurance and Prescription document due to following reasons";
     }

    if (hasPrescription && hasInsurance) {
      return isPendingReview == false
          ? " Approved your health insurance and Prescription."
          : " will review your prescription and health insurance and back to you Shortly.";
    }
    return isPendingReview == false && hasPrescription
        ? " Approved your Prescription."
        : " will review your prescription and back to you Shortly.";
  }

  Widget _reviewStatusWidget(BuildContext context) {
    if(data.isCanceled == true){
      return Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(radius: 4, backgroundColor: context.colors.bloodyRed),
          Gaps.hGap5,
          Text(
            data.deliveryStatus,
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
            data.deliveryStatus,
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
            data.deliveryStatus,
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
