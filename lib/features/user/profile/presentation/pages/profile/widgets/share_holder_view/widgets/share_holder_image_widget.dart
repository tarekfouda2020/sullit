part of 'share_holder_view_widgets_imports.dart';

class ShareHolderImageWidget extends StatelessWidget {
  final ProfileController controller;
  const ShareHolderImageWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    var image = context.select<UserCubit, String>(
        (value) => value.state.model?.avatarOriginal ?? "");
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10).r,
      ),
      child: BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
        bloc: controller.imageCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            return Stack(
              alignment: Alignment.bottomCenter,
              clipBehavior: Clip.none,
              children: [
                InkWell(
                  onTap: () => controller.getImage(context),
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: const Color(0xffF4AE00), width: 1.5),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: FileImage(state.data!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                PositionedDirectional(
                  bottom: -1,
                  end: -4,
                  child: InkWell(
                    onTap: () => controller.removeImage(),
                    child: Container(
                      padding: const EdgeInsets.all(2).r,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xffF4AE00),
                      ),
                      child: Icon(
                        Icons.clear_rounded,
                        size: 17.sp,
                        color: context.colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Stack(
              clipBehavior: Clip.none,
              children: [
                InkWell(
                  onTap: () =>
                      AutoRouter.of(context).push(ImageZoomRoute(image: image)),
                  child: Container(
                    padding: const EdgeInsets.all(1),
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: CachedImage(
                        url: image,
                        height: 60,
                        width: 60,
                        haveRadius: false,
                        boxShape: BoxShape.circle,
                        border: Border.all(
                            color: const Color(0xffF4AE00), width: 3)),
                  ),
                ),
                PositionedDirectional(
                  bottom: -2,
                  end: -5,
                  child: InkWell(
                    onTap: () => controller.getImage(context),
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          // color: context.colors.lightPrimary,
                          color: Color(0xffFAC950)),
                      child: SvgPicture.asset(
                        Res.pencilIcon,
                        height: 14,
                        width: 14,
                        colorFilter: ColorFilter.mode(
                            context.colors.black, BlendMode.srcIn),
                      ),
                    ),
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}
