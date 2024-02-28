part of 'following_imports.dart';

class Following extends StatefulWidget {
  const Following({Key? key}) : super(key: key);

  @override
  State<Following> createState() => _FollowingState();
}

class _FollowingState extends State<Following> {
  late FollowingController controller;

  @override
  void initState() {
    controller = FollowingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.customBackground,
      body: BlocBuilder<GenericBloc<List<Shop>>, GenericState<List<Shop>>>(
        bloc: controller.followingCubit,
        builder: (context, state) {
          if (state is GenericUpdateState) {
            if (state.data.isNotEmpty) {
              return ListView.builder(
                padding: Dimens.standardPadding,
                itemCount: state.data.length,
                itemBuilder: (_, index) => BuildFollowingItem(
                  controller: controller,
                  shopModel: state.data[index],
                ),
              );
            } else {
              return const BuildEmptyDataImage();
            }
          } else {
            return const BuildLoadingFollowing();
          }
        },
      ),
    );
  }
}
