import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_decoration.dart';
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
    String lang =  context.read<DeviceCubit>().state.model.locale.languageCode;
    return GestureDetector(
      onTap: onSelect,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsetsDirectional.only(start: 22, end: 15, top: 15, bottom: 13),
        decoration: CustomDecoration(
            radius: BorderRadius.circular(12),
        ).copyWith(
          border: model.subscription!=null
              ? null
              : Border.all(color: model.isSelected ?
          context.colors.primary
              : context.colors.borderColor,
              width: 1)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
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
                      visible: model.subscription!=null,
                      child: SvgPicture.asset(
                        Res.redVipMark,
                        width: 30, height: 35,
                      )
                  ),
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
            Visibility(
              visible: model.subscription==null,
                child: Gaps.vGap12
            ),
            Row(
              children: [
                Text(
                  "${model.price} ",
                  style: AppTextStyle.s22_w600(color: context.colors.primary),
                ),
                Text(
                  model.duration,
                  style: AppTextStyle.s22_w300(color: context.colors.primary),
                ),
              ],
            ),
            Gaps.vGap6,
            Text(
              "Benefits :",
              style: AppTextStyle.s12_w600(color: context.colors.black),
            ),
            Gaps.vGap8,
            Html(data: model.description,
              style: {
              "body": Style(
                color: context.colors.textColor,
                fontSize: FontSize(12),
                fontWeight: FontWeight.w400,
                alignment: lang == "ar" ? Alignment.centerLeft : Alignment.centerRight,
                margin: Margins.all(0),
                padding: HtmlPaddings.all(0),
              ),
                "ul": Style(
                  margin: Margins.all(0),
                  padding: HtmlPaddings.all(0),
                ),
                "li": Style(
                  margin: Margins.all(0),
                  padding:HtmlPaddings.all(0),
                ),
              },

            ),
            // ...List.generate(3, (index) {
            //   return Row(
            //     children: [
            //       Container(
            //         width: 5,
            //         height: 5,
            //         decoration: BoxDecoration(color: context.colors.textColor, shape: BoxShape.circle),
            //       ),
            //       Gaps.hGap10,
            //       Text(
            //         "Lorem Ipsum is simply dummy text of the printing ",
            //         style: AppTextStyle.s12_w400(color: context.colors.textColor),
            //       ),
            //     ],
            //   );
            // }),
           Visibility(
             visible: model.subscription!=null,
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Gaps.vGap15,
                 Divider(color: context.colors.textColor),
                 Gaps.vGap15,
                 Text("Valid for ${model.expiredInDays} Days",
                   style: AppTextStyle.s12_w400(color: context.colors.textColor),
                 ),
               ],
             ),
           )

          ],
        ),
      ),
    );
  }
}
