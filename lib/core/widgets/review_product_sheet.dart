import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/DefaultButton.dart';
import 'package:flutter_tdd/core/widgets/multi_drop_down/bottom_sheet/bottom_sheet_header_widget.dart';

class ReviewProductSheetWidget extends StatefulWidget {
  final void Function(double) onRateProduct;
  final double? initRate;
  const ReviewProductSheetWidget({super.key, required this.onRateProduct, this.initRate,});

  @override
  State<ReviewProductSheetWidget> createState() => _ReviewProductSheetWidgetState();
}

class _ReviewProductSheetWidgetState extends State<ReviewProductSheetWidget> {


  final GenericBloc<double> ratCubit = GenericBloc<double>(1.0);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 29, left: 20, right: 20, bottom: 10),
      decoration: BoxDecoration(
        color: context.colors.customBackground,
        borderRadius: Dimens.sheetBorderRadius,
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const BottomSheetHeaderWidget(title: "Review"),
            Gaps.vGap(32),
            BlocBuilder<GenericBloc<double>, GenericState<double>>(
              bloc: ratCubit,
              builder: (context, state) {
                return RatingBar.builder(
                  initialRating: widget.initRate ?? state.data,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: false,
                  glow: false,
                  itemCount: 5,
                  itemSize: 40.sp,
                  unratedColor: context.colors.disableGray,
                  itemPadding: const EdgeInsets.only(bottom: 5).r,
                  itemBuilder: (context, _) =>
                  const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) => ratCubit.onUpdateData(rating),
                );
              },
            ),
            Gaps.vGap(52),
            DefaultButton(
              title: "Confirm",
              onTap: () => widget.onRateProduct(ratCubit.state.data),
              margin: EdgeInsets.zero,
            )
          ],
        ),
      ),
    );
  }
}
