part of 'pharmacy_order_details_imports.dart';

class PharmacyOrderDetails extends StatefulWidget {
  final int id;
  final bool fromCheckout;
  const PharmacyOrderDetails({super.key, required this.id,  this.fromCheckout = false});

  @override
  State<PharmacyOrderDetails> createState() => _PharmacyOrderDetailsState();
}

class _PharmacyOrderDetailsState extends State<PharmacyOrderDetails> {
  late final PharmacyOrderDetailsController controller;

  @override
  void initState() {
    super.initState();
    controller = PharmacyOrderDetailsController(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (widget.fromCheckout) {
          controller.onPressBack(context, true);
          return false;
        }
        return true;
      },
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(
          title: '',
          titleWidget: BlocBuilder<GenericBloc<Orders?>, GenericState<Orders?>>(
            bloc: controller.orderDetailsBloc,
            builder: (context, state) {
              final order = state.data;
              if (order != null &&
                  order.isPendingReview == false &&
                  order.isConfirmed) {
                return Text(
                  'Prescription Order Review',
                  style: AppTextStyle.s16_w700(color: context.colors.black),
                );
              }
              return const SizedBox.shrink();
            },
          ),
          onBack: () => controller.onPressBack(context, widget.fromCheckout),
          size: 60,
        ),
        body: PharmacyOrderDetailsBody(controller: controller),
      ),
    );
  }
}
