part of 'seller_profile_widgets_imports.dart';

class BuildSellerProfileImage extends StatelessWidget {
  final SellerProfileController sellerProfileController;

  const BuildSellerProfileImage(
      {Key? key, required this.sellerProfileController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20).r,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10).r,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        clipBehavior: Clip.none,
        children: [
          BlocBuilder<GenericBloc<File?>, GenericState<File?>>(
            bloc: sellerProfileController.imageCubit,
            builder: (context, state) {
              if (state is GenericUpdateState) {
                return Container(
                  width: 110.r,
                  height: 110.r,
                  decoration: BoxDecoration(
                    border: Border.all(color: context.colors.darkPurple),
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: FileImage(File(state.data!.path)),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }
              return InkWell(
                  onTap: () {},
                  child: Container(
                    width: 110.r,
                    height: 110.r,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: context.colors.disableGray),
                    child: CachedImage(
                      fit: BoxFit.cover,
                      haveRadius: false,
                      boxShape: BoxShape.circle,
                      placeHolder: Image.asset(
                        Res.profile,
                        height: 120.r,
                        width: 120.r,
                      ),
                      url: "",
                    ),
                  ));
            },
          ),
          PositionedDirectional(
            top: 10,
            end: 5,
            child: InkWell(
              onTap: () => sellerProfileController.getImage(context),
              child: Container(
                padding: const EdgeInsets.all(3).r,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: context.colors.white,
                    border: Border.all(
                      color: context.colors.disableGray,
                    )),
                child: Icon(
                  Icons.camera_alt,
                  size: 17.sp,
                  color: context.colors.darkPurple,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
