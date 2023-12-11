import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/dimens.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/products_helper.dart';

class BuildCompareItem extends StatefulWidget {
  final Function() onTap;
  final Product productModel;
  final double? width;
  final EdgeInsetsGeometry? margin;
  final EdgeInsets? padding;

  const BuildCompareItem(
      {super.key,
      required this.onTap,
      required this.productModel,
      this.width,
      this.margin,
      this.padding});

  @override
  State<BuildCompareItem> createState() => _BuildCompareItemState();
}

class _BuildCompareItemState extends State<BuildCompareItem> {
  final GenericBloc<bool> isComparedCubit = GenericBloc(false);

  @override
  void initState() {
    isComparedFun();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getIt<ProductsHelper>().addProductToCompare(
          context: context,
          product: widget.productModel,
        );
        isComparedCubit.onUpdateData(!isComparedCubit.state.data);
        widget.onTap();
      },
      child: BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
        bloc: isComparedCubit,
        builder: (context, state) {
          return Container(
            alignment: Alignment.center,
            margin: widget.margin ?? Dimens.paddingAll5PX,
            height: 25,
            width: widget.width ?? 25,
            padding: widget.padding ?? EdgeInsets.zero,
            decoration: BoxDecoration(
              border: Border.all(color: context.colors.greyWhite, width: .5),
              color: state.data == true
                  ? context.colors.primary
                  : context.colors.white,
              borderRadius: BorderRadius.circular(Dimens.dp4),
            ),
            child: Icon(
              Icons.compare_arrows,
              color: state.data == true
                  ? context.colors.white
                  : context.colors.textColor,
              size: 16.sp,
            ),
          );
        },
      ),
    );
  }

  void isComparedFun() async {
    var param =
        await getIt<ProductsHelper>().isAddedToCompared(widget.productModel);
    isComparedCubit.onUpdateData(param);
  }
}
