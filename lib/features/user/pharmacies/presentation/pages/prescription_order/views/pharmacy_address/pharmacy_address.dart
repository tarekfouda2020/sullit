part of 'pharmacy_address_imports.dart';

class PharmacyAddress extends StatefulWidget {
  final bool havePrescription;
  final Shop? pharmacy;
  final PharmacyCreateOrderParams? createOrderParams;
  final int? preSelectedBranchId;

  const PharmacyAddress({
    super.key,
    this.havePrescription = false,
    this.pharmacy,
    this.createOrderParams,
    this.preSelectedBranchId,
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
      createOrderParams: widget.createOrderParams,
      preSelectedBranchId: widget.preSelectedBranchId,
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
          if (widget.havePrescription)
            PharmacyInfoRowWidget(pharmacy: widget.pharmacy),
          Expanded(
            child: SingleChildScrollView(
              padding: Dimens.paddingAll15PX,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                 if(widget.havePrescription)...[
                   SelectReceivingMethodWidget(controller: controller),
                   Gaps.vGap20,
                 ],
                  BlocBuilder<GenericBloc<DeliveryTypeEnum>,
                      GenericState<DeliveryTypeEnum>>(
                    bloc: controller.deliveryMethodCubit,
                    builder: (context, state) {
                      final isPickUp = widget.havePrescription &&
                          state.data == DeliveryTypeEnum.pickUp;
                      return AnimatedSwitcher(
                        duration: const Duration(milliseconds: 350),
                        child: isPickUp
                            ? Visibility(
                              visible: widget.pharmacy?.hasBranches == true ,
                              replacement: Center(
                                child: GestureDetector(
                                  onTap: () {
                                    if(widget.pharmacy?.pickUp != null){
                                      getIt<LocationService>().openGoogleMapsNavigation(
                                          latitude: widget.pharmacy!.pickUp!.lat,
                                          longitude: widget.pharmacy!.pickUp!.lang,
                                      );
                                    }
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    spacing: 5,
                                    children: [
                                      Text("you will pick order from pharmacy",
                                      style: AppTextStyle.s18_w500(color: context.colors.black),
                                      ),
                                      Icon(Icons.pin_drop,
                                      color: context.colors.primary,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(bottom: 20),
                                child: PickupSectionWidget(
                                  pagingController:
                                      controller.branchesPagingController,
                                  onSelectBranch: (branch) =>
                                      controller.selectBranchInView(branch),
                                ),
                              ),
                            )
                            : AddressSelectionSectionWidget(
                              controller: controller,
                            ),
                      );
                    },
                  ),
                  Gaps.vGap20,
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
