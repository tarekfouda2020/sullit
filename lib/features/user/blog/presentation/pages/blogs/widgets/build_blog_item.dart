part of 'blogs_w_imports.dart';

class BuildBlogItem extends StatelessWidget {
  final Blog blog;
  const BuildBlogItem({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(BlogDetailsRoute(blog: blog)),
      child: Container(
        margin: Dimens.paddingVertical5PX,
        decoration: CustomDecoration(),
        padding: Dimens.paddingAll15PX,
        child: Row(
          children: [
            CachedImage(
              url: blog.banner,
              width: 100.w,
              height: 100.h,
              borderRadius: Dimens.borderRadius10PX,
            ),
            Gaps.hGap12,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: Dimens.paddingVertical5PX,
                  child: Text(
                    blog.title,
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                Text(
                  blog.slug,
                  style: AppTextStyle.s14_w800(color: context.colors.black),
                ),
                Padding(
                  padding: Dimens.paddingVertical5PX,
                  child: Text(
                    blog.category,
                    style: AppTextStyle.s14_w800(color: context.colors.black),
                  ),
                ),
                Text(
                  blog.shortDescription,
                  style: AppTextStyle.s14_w800(color: context.colors.black),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
