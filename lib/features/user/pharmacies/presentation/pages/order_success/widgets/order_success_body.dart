part of 'widgets_imports.dart';

class OrderSuccessBody extends StatelessWidget {
  const OrderSuccessBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: Dimens.paddingAll20PX,
      children: [
        Gaps.vGap10,
        Stack(
          alignment: Alignment.topCenter,
          clipBehavior: Clip.none,
          children: [
            const PharmacyOrderDoneWidget(),
            SvgPicture.asset(Res.orderConfirmImage),
          ],
        ),
        Gaps.vGap20,
        Text(
          "Products",
          style: AppTextStyle.s16_w700(color: context.colors.black),
        ),
        Gaps.vGap20,
        ...List.generate(4, (index) {
          return  const OrderItemCard(
            imageUrl: 'https://images.heb.com/is/image/HEBGrocery/001398288',
            title: 'Omega 3 Fish Oil 1000MG 100 Soft Gel (Now)',
            rating: 4,
            price: '31.50',
            description: '30 Tab Box',
            quantity: 1,
          ) ;
        },),
        Gaps.vGap20,
      ],
    );
  }
}
