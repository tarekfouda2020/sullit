part of 'membership_subscribe_imports.dart';

class MembershipSubscribe extends StatefulWidget {
  const MembershipSubscribe({super.key});

  @override
  State<MembershipSubscribe> createState() => _MembershipSubscribeState();
}

class _MembershipSubscribeState extends State<MembershipSubscribe> {

  final MembershipSubscribeController controller = MembershipSubscribeController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      appBar: const DefaultAppBar(title: '', elevation: 0),
      body: BlocBuilder<GenericBloc<SubscribeContentDomainModel?>, GenericState<SubscribeContentDomainModel?>>(
        bloc: controller.subscriptionContentBloc,
        builder: (context, state) {
         if(state is GenericUpdateState){
           return ListView(
             padding: Dimens.paddingHorizontal20PX,
             children: [
               const BuildHeaderLogo(marginTop: 5),
               GetPlansWidget(controller: controller,model: state.data!),
               Gaps.vGap19,
                AboutGiftCardWidget(model: state.data!,)
             ],
           );
         }else{
           return const MembershipContentShimmerWidget();
         }
        },
      ),
    );
  }
}
