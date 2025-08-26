part of 'profile_widgets_imports.dart';

class BuildProfileImage extends StatelessWidget {
  final ProfileController controller;

  const BuildProfileImage({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = context.watch<UserCubit>().state.model;
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
                    height: 124,
                    width: 124,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: FileImage(state.data!),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                PositionedDirectional(
                  bottom: 5,
                  end: 0,
                  child: InkWell(
                    onTap: () => controller.removeImage(),
                    child: Container(
                      padding: const EdgeInsets.all(2).r,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.snackBarRedError,
                      ),
                      child: Icon(
                        Icons.close,
                        size: 17.sp,
                        color: context.colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            );
          } else {
            return Stack(
              children: [
                Container(
                  padding: const EdgeInsets.all(1),
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                  ),
                  child: CachedImage(
                    url: user?.avatarOriginal ?? "",
                    height: 124,
                    width: 124,
                    haveRadius: false,
                    boxShape: BoxShape.circle,
                  ),
                ),
                PositionedDirectional(
                  bottom: 2,
                  end: 5,
                  child: InkWell(
                    onTap: () => controller.getImage(context),
                    child: Container(
                      padding: const EdgeInsets.all(12).r,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.lightPrimary,
                      ),
                      child: SvgPicture.asset(Res.pencilIcon, height: 16, width: 16,),
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
