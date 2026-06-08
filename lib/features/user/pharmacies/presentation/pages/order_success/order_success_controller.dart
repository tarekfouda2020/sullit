part of 'order_success_imports.dart';

class OrderSuccessController {
  final GenericBloc<FessMechanismModel?> feesCubit = GenericBloc(null);

  final GenericBloc<LoyaltyPointsBalanceDomainModel?> loyaltyPointsBalanceBloc =
      GenericBloc<LoyaltyPointsBalanceDomainModel?>(null);

  OrderSuccessController() {
    getOrderFees(fromRemote: false);
    getOrderFees();
    getLoyaltyPointsBalance(refresh: false);
    getLoyaltyPointsBalance();
  }

  Future<void> getOrderFees({bool fromRemote = true}) async {
    await GetOrderFees().call(fromRemote).then(
      (value) {
        feesCubit.onUpdateData(value);
      },
    );
  }

  void showFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showDelivery: false,
          showTech: true,
        );
      },
    );
  }

  void showDeliveryFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showService: false,
          showTech: false,
        );
      },
    );
  }

  void showTechFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showService: false,
          showDelivery: false,
        );
      },
    );
  }

  void showEnvFeesSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.transparent,
      builder: (context) {
        return FeesSheetWidget(
          feesCubit: feesCubit,
          showService: false,
          showDelivery: false,
          showTech: false,
          showEnv: true,
        );
      },
    );
  }

  Future<void> getLoyaltyPointsBalance({bool refresh = true}) async {
    return await GetLoyaltyPointsBalance().call(refresh).then(
          (value) => loyaltyPointsBalanceBloc.onUpdateData(value),
        );
  }

  void showTierFullName(
      BuildContext context, String description, String title) {
    showModalBottomSheet(
      context: context,
      useRootNavigator: true,
      isDismissible: true,
      isScrollControlled: false,
      enableDrag: false,
      builder: (context) {
        return FullTierNameWidget(
          description: description,
          title: title,
        );
      },
    );
  }

}
