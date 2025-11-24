import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/build_shimmer_item.dart';
import 'package:flutter_tdd/core/widgets/dirham_currency_symbol.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/models/loyalty_points_balance_domain_model.dart';
import 'package:flutter_tdd/features/user/loyalty_points/domain/use_case/get_loyalty_points_balance.dart';
import 'package:flutter_tdd/res.dart';

class BezatPointsSummaryWidget extends StatefulWidget {
  final double redeemedPoints;
  final double redeemedValue;
  final double earnedPoints;
  const BezatPointsSummaryWidget({super.key, required this.redeemedPoints, required this.redeemedValue, required this.earnedPoints});

  @override
  State<BezatPointsSummaryWidget> createState() => _BezaatPointsSummaryWidgetState();
}

class _BezaatPointsSummaryWidgetState extends State<BezatPointsSummaryWidget> {


  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc = GenericBloc<LoyaltyPointsBalanceDomainModel?>(null);

  Future<void> getLoyaltyPointsBalance({bool refresh = true}) async {
    return await GetLoyaltyPointsBalance().call(refresh).then(
          (value) => loyaltyPointsBalanceBloc.onUpdateData(value),
    );
  }
  
  
  @override
  void initState() {
    super.initState();
    getLoyaltyPointsBalance(refresh: false);
    getLoyaltyPointsBalance();
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.fromSTEB( 20,15,5,15 ),
      decoration: BoxDecoration(
          border: Border.all(
            color: context.colors.borderColor,
          ),
          color: context.colors.white,
          borderRadius: BorderRadius.circular(12)
      ),
      child: BlocBuilder<GenericBloc<LoyaltyPointsBalanceDomainModel?>, GenericState<LoyaltyPointsBalanceDomainModel?>>(
        bloc: loyaltyPointsBalanceBloc,
        builder: (context, state) {
          if(state is GenericUpdateState || state.data != null){
           return Column(
              spacing: 10,
              children: [
                Row(
                  spacing: 10,
                  children: [
                    SvgPicture.asset(Res.loyaltyIcon,width: 25, height: 25,),
                    Text(tr("bezat_points_summary"),
                      style: AppTextStyle.s18_w500(color: context.colors.primary),
                    )
                  ],
                ),
                  Gaps.vGap10,
                  if (widget.redeemedValue > 0)
                    _buildPointsItem(
                      title: tr("points_redeemed"),
                      points: widget.redeemedPoints,
                      showRedeemedValue: true,
                    ),
                _buildPointsItem(
                  title: tr("points_earned_on_this_order"),
                  points: widget.earnedPoints,
                ),
                _buildPointsItem(
                  title: tr("new_bezat_points_balance"),
                  points: state.data!.points + widget.earnedPoints,
                ),
              ],
            );
          }else{
            return Column(
              children: List.generate(4, (index) {
                return const BuildShimmerItem(height: 20,width: 100,);
              },),
            );
          }
        },
      ),
    );
  }



  Widget _buildPointsItem({
    required String title,
    required double points,
    bool showRedeemedValue = false,
  }) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("•", style: AppTextStyle.s18_w500(color: context.colors.black)),
          Gaps.hGap10,
          Expanded(
            child: Wrap(
              crossAxisAlignment: WrapCrossAlignment.center,
              runSpacing: 5,
              children: [
                Text(
                  "$title : ",
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
                Text(
                  "$points ",
                  style: AppTextStyle.s14_w500(color: context.colors.black),
                ),
                Text(
                  tr("points"),
                  style: AppTextStyle.s14_w400(color: context.colors.black),
                ),
                if (showRedeemedValue) _buildRedeemedValue(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRedeemedValue() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(" ( ", style: AppTextStyle.s15_w400(color: context.colors.black)),
        Text("${widget.redeemedValue}",
            style: AppTextStyle.s15_w400(color: context.colors.black))
            .withDirhamSymbol(),
        Text(" ${tr("value")}) ",
            style: AppTextStyle.s15_w400(color: context.colors.black)),
      ],
    );
  }


}
