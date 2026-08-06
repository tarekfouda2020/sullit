part of 'home_main_widgets_imports.dart';

class CategoryCardWidget extends StatelessWidget {
  final String title;
  final String image;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;

  const CategoryCardWidget(
      {super.key,
      required this.title,
      required this.image,
      required this.backgroundColor,
      required this.textColor,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 122,
        height: 122,
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(24),
          border: Border.all(
            color: context.colors.borderColor,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),
            Gaps.vGap5,
            Text(title, style: AppTextStyle.s14_w600(color: textColor)),
          ],
        ),
      ),
    );
  }
}
