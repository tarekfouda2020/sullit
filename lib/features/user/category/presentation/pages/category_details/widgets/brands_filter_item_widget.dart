part  of 'category_details_widgets_imports.dart';

class BrandsFilterItem extends StatelessWidget {
  const BrandsFilterItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      GestureDetector(
        onTap: ()=>AutoRouter.of(context).push(const BrandsRoute()),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(tr("brand"),
            style: AppTextStyle.s14_w600(color: context.colors.black),
            ),
            Icon(Icons.keyboard_arrow_down_rounded,
            color: context.colors.black,
              size: 20.sp,
            )
          ],
        ),
      ),
        Gaps.line(context.colors.gray, 15),
      ],
    );
  }
}
