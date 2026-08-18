part of 'sale_details_w_imports.dart';

class BuildFlashSaleLoadingView extends StatelessWidget {
  const BuildFlashSaleLoadingView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BuildShimmerItem(
              child: Container(
                margin: const EdgeInsets.all(5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const BuildShimmerItem(
                  height: 10,
                  width: 30,
                ),
              ),
            ),
            BuildShimmerItem(
              child: Container(
                margin: const EdgeInsets.all(5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const BuildShimmerItem(
                  height: 10,
                  width: 30,
                ),
              ),
            ),
            BuildShimmerItem(
              child: Container(
                margin: const EdgeInsets.all(5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const BuildShimmerItem(
                  height: 10,
                  width: 30,
                ),
              ),
            ),
            BuildShimmerItem(
              child: Container(
                margin: const EdgeInsets.all(5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const BuildShimmerItem(
                  height: 10,
                  width: 30,
                ),
              ),
            ),
          ],
        ),
        Expanded(
          child: GridView.builder(
            padding: Dimens.standardPadding,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 15.r,
              mainAxisSpacing: 15.r,
              childAspectRatio: 8 / 9,
            ),
            itemCount: 10,
            itemBuilder: (context, index) => const BuildProductItemShimmer(),
          ),
        ),
      ],
    );
  }
}
