part of 'conformation_imports.dart';

class Confirmation extends StatefulWidget {
  final OrderSummary? summary;
  final int? combinedId ;

  const Confirmation({Key? key,  this.summary,  this.combinedId}) : super(key: key);

  @override
  State<Confirmation> createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  late ConfirmationController controller ;

  @override
  void initState() {
    controller = ConfirmationController(widget.summary, widget.combinedId);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: BuildCustomAppBar(
        onBack: () => AutoRouter.of(context).pushAndPopUntil(
          HomeRoute(index: 0),
          predicate: (route) => false,
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: [
          const BuildCartStepper(current: 5),
          const BuildDone(),
          Gaps.vGap15,
          const BuildThanksText(),
          Gaps.vGap10,
          BuildOrderSummary(summary: widget.summary!,),
          const BuildOrdersDetails(),
          Gaps.vGap15
        ],
      ),
    );
  }
}
