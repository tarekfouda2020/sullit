import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/loading_icon_widget.dart';
import 'package:flutter_tdd/features/user/category/presentation/pages/category_details/widgets/category_details_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/res.dart';

class ProductCardFavButton extends StatelessWidget {
  final Product productModel;
  final GenericBloc<bool> showFavLoading;
  final VoidCallback onFavTap;

  const ProductCardFavButton({
    super.key,
    required this.productModel,
    required this.showFavLoading,
    required this.onFavTap,
  });

  @override
  Widget build(BuildContext context) {
    return PositionedDirectional(
      end: 3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<GenericBloc<bool>, GenericState<bool>>(
            bloc: showFavLoading,
            builder: (context, state) {
              return Visibility(
                visible: state.data,
                replacement: BuildIconItem(
                  icon: productModel.isWishlist! ? Res.favIcon : Res.emptyFavIcon,
                  changeBgColor: false,
                  inActiveColor: context.colors.customBackground,
                  onTap: onFavTap,
                  checkValue: productModel.isWishlist,
                ),
                child: const LoadingIconWidget(),
              );
            },
          ),
        ],
      ),
    );
  }
}
