part of 'retrieve_order_widgets_imports.dart';

class BuildRetrieveOrderProducts extends StatelessWidget {
  final RetrieveOrderController controller;

  const BuildRetrieveOrderProducts({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<OrderDetails>>,
        GenericState<List<OrderDetails>>>(
      bloc: controller.orderCubit,
      builder: (_, state) {
        return Column(
          children: List.generate(
            state.data.length,
            (index) => BuildRetrieveOrderItem(
              orderDetails: state.data[index],
              controller: controller,
            ),
          ),
        );
      },
    );
  }
}
