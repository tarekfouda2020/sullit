part of 'notifications_widgets_imports.dart';

class BuildNotifiesLoading extends StatelessWidget {
  const BuildNotifiesLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding:
      const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
      itemCount: 5,
      itemBuilder: (context, index) => Container(
          margin: const EdgeInsets.symmetric(
            vertical: 5,
          ).r,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5).r,
            color: context.colors.white,
            boxShadow: [
              BoxShadow(
                color: context.colors.greyWhite,
                blurRadius: 1,
                spreadRadius: 1,
              )
            ],
          ),
          child: ListTile(
            title: Column(
              children: const [
                BuildShimmerItem(
                  height: 6,
                  width: 100,
                ),
                BuildShimmerItem(
                  height: 6,
                  width: 100,
                ),
                BuildShimmerItem(
                  height: 6,
                  width: 100,
                ),
              ],
            ),
            leading: BuildShimmerItem(
                child: Image.asset(
                  Res.suliitLogo,
                  height: 40.r,
                  width: 40.h,
                )),
            trailing: const BuildShimmerItem(width: 150, height: 6),
            minLeadingWidth: 10.w,
          )),
    );
  }
}
