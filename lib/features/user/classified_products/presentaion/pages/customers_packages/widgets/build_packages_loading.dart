part of 'customers_packages_w_imports.dart';
class BuildPackagesLoading extends StatelessWidget {
  const BuildPackagesLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: BuildShimmerItem(
              height: 7,
              width: 300,
            )),
        Center(
          child: Wrap(
            runSpacing: 10,
            spacing: 10,
            children: List.generate(
              5,
                  (index) => Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 10),
                decoration: CustomDecoration(),
                width: MediaQuery.of(context).size.width * .45,
                child: Column(
                  children: [
                    BuildShimmerItem(
                      child: CachedImage(
                        url: '',
                        height: 50,
                        borderRadius:  BorderRadius.circular(5),
                        width: 50,
                      ),
                    ),
                    Gaps.vGap10,
                    const BuildShimmerItem(
                      height: 7,
                      width: 70,
                    ),
                    Padding(
                      padding:
                      const EdgeInsets.symmetric(vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          BuildShimmerItem(
                            child: Icon(
                              Icons.done,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          BuildShimmerItem(
                            width: 100,
                            height: 7,
                          )
                        ],
                      ),
                    ),
                    const BuildShimmerItem(
                      width: 100,
                      height: 7,
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 5, vertical: 7),
                      decoration: BoxDecoration(
                        color: context.colors.greyWhite,
                        borderRadius: BorderRadius.circular(7),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children:const [
                          BuildShimmerItem(
                            height: 7,
                            width: 150,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
