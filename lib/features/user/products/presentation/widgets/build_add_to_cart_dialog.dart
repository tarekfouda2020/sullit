import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/generic_cubit/generic_cubit.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/features/user/cart/presentation/pages/cart/widgets/cart_widgets_imports.dart';
import 'package:flutter_tdd/features/user/products/domain/models/product.dart';
import 'package:flutter_tdd/features/user/products/presentation/manager/add_to_cart_helper.dart';
import 'package:flutter_tdd/features/user/products/presentation/widgets/build_add_to_cart_attributes.dart';

class BuildAddToCartDialog extends StatefulWidget {
  final Product product;

  const BuildAddToCartDialog({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  State<BuildAddToCartDialog> createState() => _BuildAddToCartDialogState();
}

class _BuildAddToCartDialogState extends State<BuildAddToCartDialog> {
  @override
  Widget build(BuildContext context) {
    final GenericBloc<Product?> productCubit = GenericBloc(null);
    productCubit.onUpdateData(widget.product);
    return AlertDialog(
      backgroundColor: Colors.white,
      content: BlocBuilder<GenericBloc<Product?>, GenericState<Product?>>(
        bloc: productCubit,
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CachedImage(
                url: state.data!.images!.first,
                height: 100.h,
                borderRadius: BorderRadius.circular(25).r,
                width: MediaQuery.of(context).size.width*.5,
              ),
              Gaps.vGap10,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Text(
                  state.data!.name!,
                  style: AppTextStyle.s16_w500(color: context.colors.black),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'price',
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                  Text(
                    state.data!.priceHighLow!,
                    style: const AppTextStyle.s16_w400(color: Colors.red),
                  ),
                ],
              ),
              Divider(thickness: 1, color: context.colors.greyWhite),
              BuildProductAttributes(
                productOptions: widget.product.choiceOptions ?? [],
                productCubit: productCubit,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'quantity: ',
                    style: AppTextStyle.s16_w400(color: context.colors.black),
                  ),
                  BuildCustomBounce(
                    onTap: () {
                      if (state.data!.minQty != 1) {
                        state.data!.minQty = state.data!.minQty! - 1;
                        double price =
                            double.parse(state.data!.variant!.calculablePrice!);
                        String calculatedPrice =
                            (state.data!.minQty! * price).toString();
                        state.data!.priceHighLow = calculatedPrice;
                        productCubit.onUpdateData(state.data);
                      }
                    },
                    iconData: Icons.remove,
                  ),
                  Text(
                    state is GenericUpdateState
                        ? '  ${state.data!.minQty} '
                        : '${widget.product.minQty}',
                    style: AppTextStyle.s16_w400(
                      color: context.colors.black,
                    ),
                  ),
                  BuildCustomBounce(
                    onTap: () {
                      state.data!.minQty = state.data!.minQty! + 1;
                      double price =
                          double.parse(state.data!.variant!.calculablePrice!);
                      String calculatedPrice =
                          (state.data!.minQty! * price).toString();
                      state.data!.priceHighLow = calculatedPrice;
                      productCubit.onUpdateData(state.data);
                    },
                    iconData: Icons.add,
                  )
                ],
              ),
              Divider(thickness: 1, color: context.colors.greyWhite),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Price:',
                    style: AppTextStyle.s16_w400(
                      color: context.colors.black,
                    ),
                  ),
                  Text(
                    state.data!.priceHighLow!,
                    style: const AppTextStyle.s16_w400(color: Colors.red),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () => getIt<AddToCartHelper>().addProductToCart(
                  state.data!.minQty!,
                  state.data!.variant?.id,
                  context,
                ),
                child: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 50.w,
                    vertical: 20.h,
                  ),
                  padding: const EdgeInsets.symmetric(
                    vertical: 5,
                    horizontal: 20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(10).r,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: context.colors.white,
                        size: 15,
                      ),
                      Gaps.hGap10,
                      const Text('Add to cart'),
                    ],
                  ),
                ),
              )
            ],
          );
        },
      ),
    );
  }
}
