part of 'classified_products_w_imports.dart';
class BuildProductView extends StatelessWidget {
  final ClassifiesProductsController controller;

  final List<CusProduct> products;

  const BuildProductView(
      {Key? key, required this.products, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: products.isNotEmpty,
      replacement:  Container(
        margin: Dimens.marginTop70,
        alignment: Alignment.center,
        child: Image.asset(Res.emptyCart, scale: 3),
      ),
      child: Column(
        children: List.generate(
          products.length,
          (index) => Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(bottom: 10),
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.all(10),
                decoration: CustomDecoration(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Gaps.vGap10,
                    Text(
                      products[index].name,
                      style: AppTextStyle.s14_w800(color: context.colors.black),
                    ),
                    Gaps.vGap20,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          products[index].adminStatus,
                          style:
                              AppTextStyle.s12_w400(color: context.colors.blue),
                        ),
                      ],
                    ),
                    Gaps.vGap10,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          products[index].unitPrice,
                          style:
                              AppTextStyle.s14_w800(color: context.colors.black),
                        ),
                        const Spacer(),
                        InkWell(
                          onTap: () async{
                            var result = await AutoRouter.of(context).push(
                              EditClassifiedProductRoute(
                                productId: products[index].id,
                              ),
                            );
                            if (result == true){
                              controller.getClassifiedProducts();
                            }
                          } ,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(
                              Icons.edit_outlined,
                              color: context.colors.grey,
                              size: 25,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.delete_outline, color: context.colors.primary, size: 25,),
                        )
                      ],),
                  ],
                ),
              ),
              PositionedDirectional(
                top: 5,
                end: 0,
                child: Switch(
                  value: products[index].availableStatus,
                  onChanged: (value) {
                    products[index].availableStatus =
                        !products[index].availableStatus;
                    controller.classifiedProductsBloc.onUpdateData(
                      controller.classifiedProductsBloc.state.data,
                    );
                  },
                  activeColor: context.colors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
