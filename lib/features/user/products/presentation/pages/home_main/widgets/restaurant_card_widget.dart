part of 'home_main_widgets_imports.dart';

class RestaurantCardWidget extends StatelessWidget {
  final String name;
  final String image;

  const RestaurantCardWidget({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Column(
        children: [
          Container(
            width: 181,
            height: 72,
            decoration: BoxDecoration(
              color: context.colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: context.colors.borderColor,
              ),
            ),
            alignment: Alignment.center,
            padding: const EdgeInsets.all(16),
            child: CachedImage(
              url: image,
              fit: BoxFit.cover,
            ),
          ),
          Gaps.vGap4,
          Text(
            name,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: AppTextStyle.s14_w400(color: context.colors.black),
          ),
        ],
      ),
    );
  }
}
