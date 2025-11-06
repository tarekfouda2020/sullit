part of 'cart_confirm_buying_widgets_imports.dart';

class NewPointsBalanceWidget extends StatelessWidget {
  final GenericBloc<LoyaltyPointsBalanceDomainModel?> cubit;
  final int gainedPoints;
  const NewPointsBalanceWidget({super.key, required this.cubit, required this.gainedPoints});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            tr("new_bezat_balance"),
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ),
        BlocBuilder<GenericBloc<LoyaltyPointsBalanceDomainModel?>,GenericState<LoyaltyPointsBalanceDomainModel?>>(
          bloc: cubit,
          builder: (context,state) {
            if(state is GenericUpdateState){
              return Text(
               getNewLoyaltyPoints().toString(),
                style:  AppTextStyle.s14_w800(color: context.colors.black),
              );
            }else{
              return const BuildShimmerItem(height: 10, width: 20);
            }
          }
        ),
      ],
    );
  }

  int getNewLoyaltyPoints(){
    int balance = cubit.state.data!.points;
    return balance+gainedPoints;
  }

}
