part of 'categories_widgets_imports.dart';

class CategoriesSectionFormWidget extends StatelessWidget {
  const CategoriesSectionFormWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 30),
      color: context.colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CategoriesHeaderTitleWidget(
            onTap: () {},
            title: 'Fresh Fruits & Deli',
          ),
          Gaps.vGap12,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                4,
                (index) {
                  return Padding(
                    padding: const EdgeInsetsDirectional.only(end:8),
                    child: Column(
                      children: [
                        const CachedImage(
                          url:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqjHvsegnvL8DZvNgXXvlulR35NjI8CuhAeg&s',
                          height: 69,
                          width: 69,
                          boxShape: BoxShape.circle,
                          haveRadius: false,
                        ),
                        Gaps.vGap8,
                        Text('Poultry', style: AppTextStyle.s12_w700(color: context.colors.black)),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
