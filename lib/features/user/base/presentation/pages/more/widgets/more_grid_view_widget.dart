part of 'more_widgets_imports.dart';

class MoreGridViewWidget extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final int? crossAxisCount;
  const MoreGridViewWidget({super.key,required this.title ,required this.children, this.crossAxisCount, });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title,
        style: AppTextStyle.s18_w700(color: context.colors.black),
        ),
        GridView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.only( bottom: 16, top: 8),
          gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: crossAxisCount ?? 3,
            mainAxisExtent: 110,
            crossAxisSpacing: 8,
            mainAxisSpacing: 12,
          ),
          children: children,
        ),
      ],
    );
  }
}
