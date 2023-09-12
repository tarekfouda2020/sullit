part of 'sale_details_w_imports.dart';

class BuildTimeItem extends StatelessWidget {
  final String time ;
  const BuildTimeItem({Key? key, required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingAll5PX,
      padding: Dimens.paddingAll15PX,
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius:Dimens.borderRadius10PX,
      ),
      child: Text(
        time,
        style:  const AppTextStyle.s18_w700(color: Colors.white)
      ),
    );
  }
}
