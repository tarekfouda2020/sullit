part of 'following_imports.dart';

class FollowingController {
  final GenericBloc<List<MerchantShopModel>> followingCubit = GenericBloc([]);

  FollowingController() {
    getFollowing();
  }

  void getFollowing({bool refresh = true}) async {
    var result = await GetFollowing().call(refresh);
    followingCubit.onUpdateData(result);
  }

  void onChangeFollowing(BuildContext context, MerchantShopModel model) async {
    getIt<LoadingHelper>().showLoadingDialog();
    var result = await SetToggleFollowing().call(model.userId!);
    getIt<LoadingHelper>().dismissDialog();
    if (result) {
      model.follow = result;
      CustomToast.showSimpleToast(
        msg: tr('itemAddedToFollowing'),
        type: ToastType.success,
      );
    } else {
      followingCubit.state.data.remove(model);
      CustomToast.showSimpleToast(
        msg: tr('itemRemovedFromFollowing'),
        type: ToastType.success,
      );
    }
    followingCubit.onUpdateData(followingCubit.state.data);
  }
}
