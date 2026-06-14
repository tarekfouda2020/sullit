part of 'pharmacy_address_imports.dart';

class PharmacyAddress extends StatefulWidget {
  final bool haveInsurance;
  final bool havePrescription;
  final Shop? pharmacy;
  const PharmacyAddress({
    super.key,
    this.haveInsurance = false,
    this.havePrescription = false,
    this.pharmacy,
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
        haveInsurance: widget.haveInsurance,
        havePrescription: widget.havePrescription,
      pharmacy: widget.pharmacy
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: DefaultAppBar(
        title: widget.haveInsurance || widget.havePrescription
            ? "Checkout"
            : "Delivery Address",
        bgColor: context.colors.white,
      ),
      body: SingleChildScrollView(
        padding: Dimens.paddingAll15PX,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(widget.haveInsurance) ...[
              Gaps.vGap20,
              SelectInsuranceCompanyWidget(controller: controller)
            ],
            if (widget.haveInsurance) ...[
              Gaps.vGap20,
              PharmacyAttachPrescriptionWidget(
                controller: controller,
                fileCubit: controller.insuranceFileBloc,
                title: "Attach Health Insurance Document",
                emptyViewText: "Attach Health Insurance Document in PNG / JPG or pdf",
                hint: "Note that pharmacy will review your health insurance document and back to you with required invoice",

              ),
            ],
            if (widget.havePrescription) ...[
              Gaps.vGap20,
              PharmacyAttachPrescriptionWidget(
                controller: controller,
                fileCubit: controller.prescriptionFileBloc,
                title: "Attach Prescription ",
                emptyViewText: "Attach Prescription Document in PNG / JPG or pdf",
                hint: "Note that pharmacy will review your Prescription  document and back to you with confirmation or rejection",
              ),
            ],
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
      bottomNavigationBar: PharmacyAddressButtonsWidget(
        controller: controller,
      ),
    );
  }
}
