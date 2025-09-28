part of 'sale_details_w_imports.dart';

class BuildTimeItem extends StatelessWidget {
  final String time ;
  final String title ;
  const BuildTimeItem({Key? key, required this.time, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Dimens.paddingAll5PX,
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius:Dimens.borderRadius8PX,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            time,
            style:  const AppTextStyle.s18_w700(color: Colors.white)
          ),
          Gaps.vGap2,
          Text(
              title,
            style:  const AppTextStyle.s8_w500(color: Colors.white)
          ),

        ],
      ),
    );
  }
}
