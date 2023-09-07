part of 'add_classified_product_w_imports.dart';

class BuildGallaryImages extends StatelessWidget {
  final AddClassifiedProductsController controller;

  const BuildGallaryImages({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Gallery Images',
          style: AppTextStyle.s14_w800(color: context.colors.black),
        ),
        Gaps.vGap10,
        Container(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 10,
          ).r,
          decoration: CustomDecoration(),
          alignment: AlignmentDirectional.centerStart,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BlocBuilder<GenericBloc<List<File>>, GenericState<List<File>>>(
                bloc: controller.imagesBloc,
                builder: (context, state) {
                  if (state is GenericUpdateState) {
                    return Wrap(
                      runSpacing: 10,
                      spacing: 10,
                      children: [
                        ...List.generate(
                          state.data.length,
                          (index) => Container(
                            alignment: AlignmentDirectional.topStart,
                            height: 60,
                            width: 60,
                            margin: const EdgeInsetsDirectional.only(start: 5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.transparent,
                              ),
                              image: DecorationImage(
                                image: FileImage(state.data[index]),
                                fit: BoxFit.fill,
                              ),
                            ),
                            child: InkWell(
                                onTap: () => controller.removeImage(
                                    index, ImageType.generalImages),
                                child: Icon(
                                  Icons.clear,
                                  color: context.colors.primary,
                                  size: 15.r,
                                )),
                          ),
                        ),
                        InkWell(
                          onTap: () => controller.getRequestImages(context),
                          child: Container(
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
                    );
                  } else {
                    return InkWell(
                      onTap: () => controller.getRequestImages(context),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5).r,
                          color: context.colors.white,
                        ),
                        child: Icon(
                          Icons.add,
                          size: 15,
                          color: context.colors.primary,
                        ),
                      ),
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
