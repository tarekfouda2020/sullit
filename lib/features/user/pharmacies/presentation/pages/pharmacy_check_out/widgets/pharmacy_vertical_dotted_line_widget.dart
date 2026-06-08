part of 'pharmacy_check_out_widgets_imports.dart';

class PharmacyVerticalDottedLineWidget extends StatelessWidget {
  final double height;
  final double dotHigh;
  final double spacing;
  final Color? color;

  const PharmacyVerticalDottedLineWidget({
    super.key,
    required this.height,
    this.dotHigh = 4,
    this.spacing = 6,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final dotCount =
              (constraints.maxHeight / (dotHigh + spacing)).floor();
          return Flex(
            direction: Axis.vertical,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(4, (_) {
              return Container(
                width: 1.5,
                height: 8,
                margin: const EdgeInsets.only(bottom: 3),
                decoration: BoxDecoration(
                  color: color ?? context.colors.black,
                ),
              );
            }),
          );
        },
      ),
    );
  }
}
