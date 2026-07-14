part of 'widgets_imports.dart';

class RequestedByDropdownWidget extends StatelessWidget {
  final AttachPrescriptionController controller;

  const RequestedByDropdownWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<PharmacyOrderRequestedByModel>>,
        GenericState<List<PharmacyOrderRequestedByModel>>>(
      bloc: controller.requestedByOptionsCubit,
      builder: (context, optionsState) {
        return BlocBuilder<GenericBloc<PharmacyOrderRequestedByModel?>,
            GenericState<PharmacyOrderRequestedByModel?>>(
          bloc: controller.requestedByCubit,
          builder: (context, state) {
            return DropdownTextField<PharmacyOrderRequestedByModel>(
              title: "Requested by",
              hint: "Select requested by",
              data: optionsState.data,
              selectedItem: state.data,
              itemAsString: (item) => item.label,
              validate: (value) => null,
              onChange: (value) {
                if (value != null) {
                  controller.requestedByCubit.onUpdateData(value);
                }
              },
            );
          },
        );
      },
    );
  }
}
