part of 'pharmacy_address_imports.dart';

class PharmacyAddress extends StatefulWidget {
  final bool havePrescription;
  final Shop? pharmacy;
  final PharmacyCreateOrderParams? createOrderParams;
  const PharmacyAddress({
    super.key,
    this.havePrescription = false,
    this.pharmacy, this.createOrderParams,
  });

  @override
  State<PharmacyAddress> createState() => _PharmacyAddressState();
}

class _PharmacyAddressState extends State<PharmacyAddress> {
  late final PharmacyAddressController controller;

  @override
  void initState() {
    super.initState();
    controller = PharmacyAddressController(
        havePrescription: widget.havePrescription,
      pharmacy: widget.pharmacy,
      createOrderParams: widget.createOrderParams
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title:  widget.havePrescription
            ? "Prescription Order"
            : "Cart",
        bgColor: context.colors.white,
      ),
      body: Column(
        children: [
          BuildPrescriptionOrderStepper(
            current: 2,
            steps: widget.havePrescription
                ? PrescriptionOrderStepModel.prescriptionFlowSteps
                : PrescriptionOrderStepModel.normalFlowSteps,
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: Dimens.paddingAll15PX,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Moved to AttachPrescriptionController/AttachPrescription page: insurance
                  // company selection & insurance document attachment.
                  // if(widget.haveInsurance) ...[
                  //   Gaps.vGap8,
                  //   Text("Insurance Company",
                  //   style: AppTextStyle.s16_w600(color: context.colors.black),
                  //   ),
                  //   Gaps.vGap20,
                  //   SelectInsuranceCompanyWidget(controller: controller)
                  // ],
                  // if (widget.haveInsurance) ...[
                  //   Gaps.vGap20,
                  //   PharmacyAttachPrescriptionWidget(
                  //     controller: controller,
                  //     fileCubit: controller.insuranceFileBloc,
                  //     title: "Attach Health Insurance Document",
                  //     emptyViewText: "Attach Health Insurance Document in PNG / JPG or pdf",
                  //     hint: "Note that pharmacy will review your health insurance document and back to you with required invoice",
                  //
                  //   ),
                  // ],
                  // Moved to AttachPrescriptionController/AttachPrescription page: prescription
                  // attachment. Stopped here (moved, not deleted).
                  // if (widget.havePrescription) ...[
                  //   Gaps.vGap20,
                  //   PharmacyAttachPrescriptionWidget(
                  //     controller: controller,
                  //     fileCubit: controller.prescriptionFileBloc,
                  //     title: "Attach Prescription ",
                  //     emptyViewText: "Attach Prescription Document in PNG / JPG or pdf",
                  //     hint: "Note that pharmacy will review your Prescription  document and back to you with confirmation or rejection",
                  //   ),
                  // ],
                  Gaps.vGap20,
                  Text(
                    "Select Address",
                    style: AppTextStyle.s16_w500(
                      color: context.colors.black,
                    ),
                  ),
                  Gaps.vGap15,
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: MediaQuery.sizeOf(context).height * 0.6,
                      minHeight: MediaQuery.sizeOf(context).height * 0.25,
                    ),
                    padding: Dimens.paddingAll15PX,
                    decoration: CustomDecoration(
                      thisColor: context.colors.white,
                      radius: Dimens.borderRadius10PX,
                      boxBorder: Border.all(
                        color: context.colors.borderColor,
                      ),
                      myBoxShadow: const [],
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Flexible(
                          child: PharmacyAddressListWidget(
                            controller: controller,
                          ),
                        ),
                        Gaps.vGap15,
                        DefaultButton(
                          title: "+ ${tr("addNewAddress")}",
                          onTap: () => controller.onAddNewAddress(context),
                          color: context.colors.white,
                          textColor: context.colors.primary,
                          borderColor: context.colors.primary,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          margin: EdgeInsets.zero,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: PharmacyAddressButtonsWidget(
        controller: controller,
      ),
    );
  }
}
