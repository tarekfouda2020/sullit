part of 'vip_memberships_widgets_imports.dart';

class ChangePlanButtonWidget extends StatelessWidget {
  final VipMembershipsController controller;

  const ChangePlanButtonWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
      bloc: controller.disableChangeButtonCubit,
      builder: (context, state) {
        return DefaultButton(
            onTap: state.data
                ?() {}
                :()=> controller.showPayMethodsSheet(context),
            title: _title(),
            disabled: state.data,
            elevation: 0,
            borderColor: Colors.transparent,
            color: state.data
                ? context.colors.primary.withOpacity(0.4)
                : context.colors.primary,
            textColor: state.data
                ? context.colors.white.withOpacity(0.4)
                : context.colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w700,
            height: 50,
            borderRadius: Dimens.borderRadius30PX,
            margin: Dimens.marginTop8Bottom20
        );
      },
    );
  }


  String  _title(){
    if(controller.currentSubscriptionBloc.state.data!.currentSubscription==null){
      return "Subscribe";
    }else{
      return "Change Plan";
    }
  }

}
