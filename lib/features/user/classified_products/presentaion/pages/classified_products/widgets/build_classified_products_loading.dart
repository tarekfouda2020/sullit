part of 'classified_products_w_imports.dart';
class BuildClassifiedProductsLoading extends StatelessWidget {
  const BuildClassifiedProductsLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      padding: const EdgeInsets.symmetric(horizontal: 15),
      children: [
        Row(
          children: const [
            BuildShimmerItem(
              height: 7,
              width: 50,
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              BuildShimmerItem(
                child: Icon(
                  Icons.upload_outlined,
                  color: context.colors.white,
                ),
              ),
              const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: BuildShimmerItem(
                    width: 40,
                    height: 10,
                  )),
              const BuildShimmerItem(
                height: 7,
                width: 100,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          margin: const EdgeInsets.symmetric(
            vertical: 10,
          ),
          width: MediaQuery.of(context).size.width,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              BuildShimmerItem(
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: context.colors.greyWhite,
                    shape: BoxShape.circle,
                  ),
                  child: BuildShimmerItem(
                    child: Icon(
                      Icons.add,
                      color: context.colors.white,
                    ),
                  ),
                ),
              ),
              BuildShimmerItem(
                width: 130.w,
                height: 7,
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          width: MediaQuery.of(context).size.width,
          decoration: CustomDecoration(),
          child: Column(
            children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                    border: Border.all(color: context.colors.greyWhite),
                  ),
                  child: BuildShimmerItem(
                    width: 130.w,
                    height: 7,
                  )),
              BuildShimmerItem(
                width: 70.w,
                height: 7,
              )
            ],
          ),
        ),
        Row(
          children: [
            Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: BuildShimmerItem(
                  height: 7,
                  width: 100.w,
                )),
          ],
        ),
        Column(
          children: List.generate(
            3,
                (index) => Stack(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(10),
                  decoration: CustomDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gaps.vGap10,
                      BuildShimmerItem(
                        height: 7.h,
                        width: 100.w,
                      ),
                      Gaps.vGap20,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BuildShimmerItem(
                            width: 100.w,
                            height: 7.h,
                          )
                        ],
                      ),
                      Gaps.vGap10,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          BuildShimmerItem(
                            width: 50.w,
                            height: 7.h,
                          ),
                          const Spacer(),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BuildShimmerItem(
                              child: Icon(
                                Icons.edit_outlined,
                                color: context.colors.grey,
                                size: 25,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: BuildShimmerItem(
                              child: Icon(
                                Icons.delete_outline,
                                color: context.colors.primary,
                                size: 25,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                PositionedDirectional(
                  top: 5,
                  end: 0,
                  child: BuildShimmerItem(
                    child: Switch(
                      value: false,
                      onChanged: (value) {
                      },
                      activeColor: context.colors.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

