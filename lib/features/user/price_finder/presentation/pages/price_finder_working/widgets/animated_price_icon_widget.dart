part of 'imports.dart';

class AnimatedPriceIconWidget extends StatelessWidget {
  final Animation<double> scaleAnimation;

  const AnimatedPriceIconWidget({
    super.key,
    required this.scaleAnimation,
  });

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: scaleAnimation,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 125,
            height: 125,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.colors.darkGreen2.withValues(alpha: 0.2),
                border: Border.all(color: context.colors.darkGreen2, width: .2)),
          ),
          Container(
            width: 95,
            height: 95,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.darkGreen2.withValues(alpha: 0.25),
              border: Border.all(color: context.colors.darkGreen2, width: .2),
            ),
          ),
          Container(
            width: 74,
            height: 74,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.colors.darkGreen2,
            ),
            child: Icon(Icons.sell_outlined, color: context.colors.white, size: 35),
          ),
        ],
      ),
    );
  }
}
