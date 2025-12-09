import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/extensions/string_helper_extension.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/lang_code_helper.dart';
import 'package:flutter_tdd/core/helpers/utilities.dart';
import 'package:flutter_tdd/core/localization/localization_methods.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
import 'package:flutter_tdd/core/widgets/dirham_price_widget.dart';
import 'package:flutter_tdd/features/user/vip_subscribe/domain/models/vip_subscribe_domain_model.dart';
import 'package:flutter_tdd/res.dart';

class MembershipItemWidget extends StatelessWidget {
  final bool isBottomSheet;
  final VipSubscribeDomainModel model;
  final void Function()? onSelect;

  const MembershipItemWidget({
    super.key,
    required this.model,
    required this.isBottomSheet,
    this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    String lang = context.read<DeviceCubit>().state.model.locale.languageCode;
    return GestureDetector(
      onTap: onSelect,
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 12),
            padding: const EdgeInsetsDirectional.only(start: 22, end: 15, top: 15, bottom: 13),
            decoration: CustomDecoration(
              radius: BorderRadius.circular(12),
            ).copyWith(
              boxShadow: [],
              border: model.subscription != null
                  ? null
                  : Border.all(
                      color: model.isSelected ? context.colors.primary : context.colors.borderColor,
                      width: 1,
                    ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(model.byInvite == true)
                Text(model.inviteLabel ?? "",
                style: AppTextStyle.s16_w500(color: context.colors.primary),
                ),
                Gaps.vGap10,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model.name,
                      style: AppTextStyle.s14_w600(color: context.colors.black),
                    ),
                    Visibility(
                      visible: isBottomSheet,
                      replacement: Visibility(
                          visible: model.subscription != null,
                          child: SvgPicture.asset(
                            Res.redVipMark,
                            width: 30,
                            height: 35,
                          )),
                      child: Container(
                        width: 20,
                        height: 20,
                        padding: const EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              color: model.isSelected ? context.colors.primary : context.colors.textColor, width: 1.5),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                              color: model.isSelected ? context.colors.primary : Colors.transparent,
                              shape: BoxShape.circle),
                        ),
                      ),
                    )
                  ],
                ),
                Visibility(visible: model.subscription == null, child: Gaps.vGap12),
                Row(
                  children: [
                    DirhamPrice(
                      amount: model.price,
                      textStyle: AppTextStyle.s22_w600(color: context.colors.primary),
                      currencyStyle:AppTextStyle.s24_w400(color: context.colors.primary) ,
                    ),
                    Text(
                      "/${model.duration.capitalize}",
                      style: AppTextStyle.s22_w300(color: context.colors.primary),
                    ),
                  ],
                ),
                Gaps.vGap8,
                Text(
                  "${tr("benefits")} :",
                  style: AppTextStyle.s12_w600(color: context.colors.black),
                ),
                Gaps.vGap6,
                Html(data: getIt<Utilities>().cleanHtml(model.description),
                  style: {
                    "body": Style(
                      color: context.colors.textColor,
                      fontSize: FontSize(12),
                      fontWeight: FontWeight.w400,
                      alignment: lang == LangCodeHelper.langAR ? Alignment.centerLeft : Alignment.centerRight,
                      margin: Margins.all(0),
                      padding: HtmlPaddings.all(0),
                    ),
                    "ul": Style(
                      margin: Margins.all(0),
                      padding: HtmlPaddings.all(0),
                      color: context.colors.textColor,
                      fontSize: FontSize(12),
                      fontWeight: FontWeight.w400,
                    ),
                    "li": Style(
                      margin: Margins.all(0),
                      padding: HtmlPaddings.all(0),
                      color: context.colors.textColor,
                      fontSize: FontSize(12),
                      fontWeight: FontWeight.w400,
                    ),
                    "strong": Style(
                      color: context.colors.textColor,
                      fontSize: FontSize(12),
                      fontWeight: FontWeight.w400,
                    ),
                    "em": Style(
                      color: context.colors.textColor,
                      fontSize: FontSize(12),
                      fontWeight: FontWeight.w400,
                      fontStyle: FontStyle.normal,
                    ),
                  },
                ),
                Visibility(
                  visible: model.subscription != null,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gaps.vGap15,
                      Divider(color: context.colors.textColor),
                      Gaps.vGap15,
                      Text(
                        getExpireText(model),
                        style: AppTextStyle.s12_w400(color: context.colors.textColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          if(model.byInvite == true)
          Positioned.fill(
            child: Container(
              margin: const EdgeInsets.only(bottom: 12),
              decoration: BoxDecoration(
                color: Colors.white.withAlpha(150),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          )
        ],
      ),
    );
  }

  String getExpireText(VipSubscribeDomainModel model) {
    var days = model.expiredInDays;
    if (days != null) {
      if (days == 1) {
        return tr("validForOneDay");
      } else if (days == 2) {
        return tr("validForTwoDay");
      } else if (days >= 5 && days <= 10) {
        return "${tr("validForDays")} ${model.expiredInDays} ${tr("days")}";
      } else {
        return "${tr("validForDays")} ${model.expiredInDays} ${tr("day")}";
      }
    } else {
      return "";
    }
  }
}
