part of 'edit_classified_product_w_imports.dart';

class BuildEditThumbnailImage extends StatelessWidget {
  final EditClassifiedProductController controller;

  const BuildEditThumbnailImage({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
      bloc: controller.thumbnailImageBloc,
      builder: (context, state) {
        if (state is GenericUpdateState) {
          return Container(
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
                image: FileImage(state.data!),
                fit: BoxFit.fill,
              ),
            ),
            child: InkWell(
              // onTap: () => controller.removeImage(0,type),
              child: Icon(
                Icons.clear,
                color: context.colors.primary,
                size: 15.r,
              ),
            ),
          );
        } else {
          return InkWell(
            onTap: () => controller.setThumbnailImage(context),
            child: Container(
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
