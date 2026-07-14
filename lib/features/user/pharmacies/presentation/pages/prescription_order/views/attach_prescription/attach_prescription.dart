part of 'attach_prescription_imports.dart';

class AttachPrescription extends StatefulWidget {
  final Shop pharmacy;
  final File? initialPrescriptionFile;
  final SavedPrescriptionModel? initialSavedPrescription;

  const AttachPrescription({
    super.key,
    required this.pharmacy,
    this.initialPrescriptionFile,
    this.initialSavedPrescription,
  });

  @override
  State<AttachPrescription> createState() => _AttachPrescriptionState();
}

class _AttachPrescriptionState extends State<AttachPrescription> {
  late final AttachPrescriptionController controller;

  @override
  void initState() {
    super.initState();
    controller = AttachPrescriptionController(
      pharmacy: widget.pharmacy,
      initialPrescriptionFile: widget.initialPrescriptionFile,
      initialSavedPrescription: widget.initialSavedPrescription,
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(
          title: "Attach Prescription",
          bgColor: context.colors.customBackground,
        ),
        body: Column(
          children: [
            const BuildPrescriptionOrderStepper(
              current: 1,
              steps: PrescriptionOrderStepModel.prescriptionFlowSteps,
            ),
            Expanded(
              child: SingleChildScrollView(
                padding: Dimens.paddingAll20PX,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    PrescriptionFileCardWidget(controller: controller),
                    Gaps.vGap15,
                    SaveForLaterWidget(controller: controller),
                    Gaps.vGap20,
                    ChooseFromSavedPrescriptionsButtonWidget(controller: controller),
                    Gaps.vGap20,
                    Text(
                      "Attach Emirates ID",
                      style: AppTextStyle.s16_w600(color: context.colors.black),
                    ),
                    Gaps.vGap15,
                    EmiratesIdUploadWidget(controller: controller),
                    Gaps.vGap15,
                    HealthInsuranceWidget(controller: controller),
                    BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
                      bloc: controller.healthInsuranceCubit,
                      builder: (context, state) {
                        if (!state.data) return const SizedBox.shrink();
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Gaps.vGap15,
                            SelectInsuranceCompanyWidget(controller: controller),
                          ],
                        );
                      },
                    ),
                    Gaps.vGap20,
                    AttachHealthInsuranceDocumentWidget(controller: controller),
                    Gaps.vGap20,
                    Text(
                      "Requested by",
                      style: AppTextStyle.s16_w600(color: context.colors.black),
                    ),
                    Gaps.vGap10,
                    RequestedByDropdownWidget(controller: controller),
                    Gaps.vGap20,
                    Text.rich(
                      TextSpan(
                        text: "Additional Notes  ",
                        style: AppTextStyle.s16_w600(color: context.colors.black),
                        children: [
                          TextSpan(
                            text: "( Optional )",
                            style: AppTextStyle.s14_w400(
                                color: context.colors.textColor),
                          ),
                        ],
                      ),
                    ),
                    Gaps.vGap10,
                    GenericTextField(
                      controller: controller.notesController,
                      hint: "Write your notes here",
                      type: TextInputType.multiline,
                      action: TextInputAction.newline,
                      fieldTypes: FieldTypes.rich,
                      max: 4,
                      validate: (value) => null,
                    ),
                    Gaps.vGap20,
                    AllowReplacementWidget(
                      allowReplacementCubit: controller.allowReplacementCubit,
                      onToggle: (value) =>
                          controller.allowReplacementCubit.onUpdateData(value),
                    ),
                    Gaps.vGap20,
                    TermsAndConditionsWidget(controller: controller),
                    Gaps.vGap20,
                  ],
                ),
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomSafeAreaWidget(
          child: CreatePrescriptionOrderButtonWidget(controller: controller),
        ),
      ),
    );
  }
}
