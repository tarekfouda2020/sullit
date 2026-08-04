part of 'tickets_details_widgets_imports.dart';

class BuildTicketsDetailsLoading extends StatelessWidget {
  const BuildTicketsDetailsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 16).r,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5).r,
              color: context.colors.white,
            ),
            child: ListTile(
              title: const BuildShimmerItem(
                height: 10,
                width: 100,
              ),
              trailing: const BuildShimmerItem(
                height: 10,
                width: 100,
              ),
              minLeadingWidth: 10.w,
            )),
        Flexible(
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16).r,
            itemBuilder: (context, index) => Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 5,
                ).r,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5).r,
                  color: context.colors.white,
                ),
                child: ListTile(
                  title: const BuildShimmerItem(
                    width: 100,
                    height: 10,
                  ),
                  subtitle: const BuildShimmerItem(
                    height: 10,
                    width: 100,
                  ),
                  leading: BuildShimmerItem(
                    child: CachedImage(
                      height: 40.r,
                      width: 40.r,
                      fit: BoxFit.cover,
                      haveRadius: false,
                      boxShape: BoxShape.circle,
                      placeHolder: Image.asset(
                        Res.profile,
                      ),
                      url: '',
                    ),
                  ),
                  trailing: const BuildShimmerItem(height: 7, width: 120),
                  minLeadingWidth: 10.w,
                )),
            itemCount: 5,
          ),
        ),
      ],
    );
  }
}
