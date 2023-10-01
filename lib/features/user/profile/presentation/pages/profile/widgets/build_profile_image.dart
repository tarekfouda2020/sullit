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
      margin: const EdgeInsets.all(10).r,
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
                    height: 100,
                    width: 100,
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
                  top: 5,
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
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey)),
                  child: CachedImage(
                    url: user?.avatarOriginal ?? "",
                    height: 100,
                    width: 100,
                    borderRadius: BorderRadius.circular(
                      50,
                    ).r,
                    haveRadius: true,
                  ),
                ),
                PositionedDirectional(
                  top: 5,
                  end: 0,
                  child: InkWell(
                    onTap: () => controller.getImage(context),
                    child: Container(
                      padding: const EdgeInsets.all(4).r,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.primary,
                      ),
                      child: Icon(
                        Icons.camera_alt_outlined,
                        size: 14.sp,
                        color: context.colors.white,
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
