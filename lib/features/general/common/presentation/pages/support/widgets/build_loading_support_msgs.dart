part of 'support_w_imports.dart';

class BuildLoadingSupportMessages extends StatelessWidget {
  const BuildLoadingSupportMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 30,
      itemBuilder: (cxt, index) {
        return BuildShimmerItem(
          child: Bubble(
            nip: index.isOdd ? BubbleNip.leftTop : BubbleNip.rightTop,
            shadowColor: Colors.transparent,
            alignment: index.isOdd
                ? AlignmentDirectional.centerStart
                : AlignmentDirectional.centerEnd,
            padding: const BubbleEdges.symmetric(
              vertical: 5,
              horizontal: 10,
            ),
            margin: BubbleEdges.only(
              top: 10,
              right: index.isOdd ? 30 : 10,
              left: index.isOdd ? 10 : 30,
            ),
            color: index.isOdd ? context.colors.white : const Color(0xffF9E8F9),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: index.isOdd
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.end,
              children: [
                const Text(""),
                Text(
                  index.isOdd
                      ? "flkdsflkdfjlsdfkjlskj"
                      : "flkdsflkdfjlsdfkjlskjflkdsflkdfjlsdfkjlskj",
                  style: AppTextStyle.s16_w400(
                    color: context.colors.black,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
