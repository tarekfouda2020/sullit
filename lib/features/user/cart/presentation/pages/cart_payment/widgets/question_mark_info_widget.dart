part of 'cart_payment_widgets_imports.dart';


class QuestionMarkInfoWidget extends StatelessWidget {
  final void Function() onPressInfo;
  final double? size;
  final double? iconSize;
  const QuestionMarkInfoWidget({super.key, required this.onPressInfo, this.size, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressInfo,
      child: Container(
        width: size ?? 15, height: size ?? 15,
        margin: const EdgeInsets.only(bottom: 5),
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: context.colors.gray3,
            shape: BoxShape.circle
        ),
        child: Icon(Icons.question_mark,color: context.colors.gray,size: iconSize ?? 10,),
      ),
    );
  }
}
