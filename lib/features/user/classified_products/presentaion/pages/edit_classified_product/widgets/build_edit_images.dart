// ignore_for_file: avoid_dynamic_calls

part of 'edit_classified_product_w_imports.dart';

class BuildEditImages extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildEditImages({Key? key, required this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<EditImagesDomainModel>, GenericState<EditImagesDomainModel>>(
      bloc: controller.addedAndExitedImgsBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
            ).r,
            height: 60.h,
            child: ListView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              scrollDirection: Axis.horizontal,
              children: [
                Wrap(
                  children: [
                    ...List.generate(
                      state.data.exitedImages.length,
                      (index) => Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            child: CachedImage(
                              width: 60.w,
                              height: 60.h,
                              url: state.data.exitedImages[index].url,
                              borderRadius: BorderRadius.circular(
                                5,
                              ).r,
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.removeExistedImage(
                                state.data.exitedImages[index], context),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 10),
                              child: Icon(
                                Icons.clear,
                                color: Colors.red,
                                size: 15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    ...List.generate(
                      state.data.addedImages.length,
                      (index) => Stack(
                        children: [
                          Container(
                            margin: const EdgeInsets.symmetric(
                              horizontal: 5,
                            ),
                            width: 60.w,
                            height: 60.h,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                5,
                              ),
                              image: DecorationImage(
                                image: FileImage(
                                  state.data.addedImages[index],
                                ),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () => controller.removeAddedImage(
                                state.data.addedImages[index]),
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 2, horizontal: 10),
                              child: Icon(
                                Icons.clear,
                                color: Colors.red,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => controller.setImages(context),
                  child: Container(
                    margin: const EdgeInsetsDirectional.only(end: 10),
                    height: 60,
                    width: 60,
                    decoration: CustomDecoration(),
                    child: Icon(
                      Icons.add,
                      color: context.colors.primary,
                    ),
                  ),
                ),
              ],
            ),
          );
        } else {
          return InkWell(
            onTap: () => controller.setImages(context),
            child: Container(
              margin: const EdgeInsetsDirectional.only(end: 10),
              height: 60,
              width: 60,
              decoration: CustomDecoration(),
              child: Icon(
                Icons.add,
                size: 15,
                color: context.colors.primary,
              ),
            ),
          );
        }
      },
    );
  }
}
