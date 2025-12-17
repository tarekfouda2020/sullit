part of 'home_main_widgets_imports.dart';


class SellersSectionWidget extends StatelessWidget {
  const SellersSectionWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Dimens.dp220,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
        return const Padding(
          padding: EdgeInsetsDirectional.only(end: 10),
          child: SellerCardWidget(),
        ) ;
      },),
    );
  }
}
