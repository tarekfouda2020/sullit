part of 'imports.dart';

class ComparisonItemStepWidget extends StatelessWidget {
  final String title;
  final bool isActive;
  final bool isCompleted;

  const ComparisonItemStepWidget({
    super.key,
    required this.title,
    this.isActive = false,
    this.isCompleted = false,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.symmetric(
        horizontal: 14,
        vertical: 10,
      ),
      decoration: BoxDecoration(
        color: isSelected ? context.colors.lightGreen : Colors.transparent,
        borderRadius: BorderRadius.circular(22),
        border: Border.all(
          color: isSelected ? context.colors.darkGreen2 : context.colors.borderColor,
        ),
      ),
      child: Row(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 300),
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: isSelected ? context.colors.darkGreen2 : context.colors.borderColor,
            ),
          ),
          Gaps.hGap9,
          Expanded(
            child: AnimatedDefaultTextStyle(
              duration: const Duration(milliseconds: 300),
              style: isSelected
                  ? AppTextStyle.s14_w700(
                      color: context.colors.darkGreen2,
                    )
                  : AppTextStyle.s14_w400(
                      color: context.colors.grey,
                    ),
              child: Text(
                title,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
        ],
      ),
    );
  }

  bool get isSelected => isActive || isCompleted;
}
