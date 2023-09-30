part of 'compare_widgets_imports.dart';

class BuildResetButton extends StatelessWidget {
  final CompareController controller;

  const BuildResetButton({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<List<Product>>, GenericState<List<Product>>>(
      bloc: controller.productsBloc,
      builder: (context, state) {
        return Visibility(
          visible: state.data.isNotEmpty,
          child: DefaultButton(
            title: tr('resetCompareList'),
            width: 150.w,
            height: 30.h,
            borderRadius: Dimens.borderRadius5PX,
            margin: Dimens.paddingAll15PX,
            onTap: () {
              getIt<ComparedProductsDb>().deleteEverything();
              controller.productsBloc.onUpdateData([]);
            },
          ),
        );
      },
    );
  }
}
