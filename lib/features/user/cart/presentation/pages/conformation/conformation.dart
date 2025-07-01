part of 'conformation_imports.dart';

class Confirmation extends StatefulWidget {
  final OrderSummary? summary;
  final int? combinedId;

  const Confirmation({Key? key, this.summary, this.combinedId})
      : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  late ConfirmationController controller;

  @override
  void initState() {
    controller = ConfirmationController(widget.summary, widget.combinedId);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.navigateToHome(context);
        return true;
      },
      child: Scaffold(
        backgroundColor: context.colors.customBackground,
        appBar: DefaultAppBar(title: tr("cart"),bgColor: context.colors.white),
        body: BlocBuilder<GenericBloc<OrderSummary?>,
            GenericState<OrderSummary?>>(
          bloc: controller.orderSummaryBloc,
          builder: (context, state) {
            if (state is GenericUpdateState) {
              return ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                   const BuildCartStepper(current: 5),
                  const BuildDone(),
                  Gaps.vGap15,
                  const BuildThanksText(),
                  Gaps.vGap10,
                  BuildOrderSummary(
                    summary: state.data!,
                  ),
                  BuildOrdersDetails(
                    summary: state.data!,
                  ),
                  Gaps.vGap15
                ],
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
    );
  }
}
