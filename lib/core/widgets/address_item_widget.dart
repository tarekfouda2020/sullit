import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/custom_radio_widget.dart';
import 'package:flutter_tdd/features/user/addresses/domain/models/address.dart';
import 'package:flutter_tdd/res.dart';
import '../constants/gaps.dart';

class AddressItemWidget extends StatelessWidget {
  final AddressDomainModel address;
  final bool isDelete;
  final void Function() onTap;
  final void Function()? onPressDelete;

  const AddressItemWidget(
      {super.key, this.isDelete = false, required this.onTap, this.onPressDelete, required this.address});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          border: Border.all(
            color: address.selected == true ?  context.colors.primary :context.colors.textColor,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, top: 16, right: 20, bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 32,
                width: 32,
                decoration: BoxDecoration(shape: BoxShape.circle, color: context.colors.lightPink),
                child: Icon(
                  Icons.location_on,
                  color: context.colors.primary,
                ),
              ),
              Gaps.hGap8,
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      address.addressTypeLabel ?? "",
                      style: AppTextStyle.s18_w700(color: context.colors.black),
                    ),
                    Gaps.vGap5,
                    Text(
                      "${address.stateName ?? " "} , ${address.cityName ?? " "}",
                      style: AppTextStyle.s16_w400(color: context.colors.textColor),
                    )
                  ],
                ),
              ),
              Visibility(
                visible: isDelete,
                replacement:  CustomRadioWidget(selected:address.selected==true),
                child: GestureDetector(onTap: onPressDelete, child: SvgPicture.asset(Res.trashIcon)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
