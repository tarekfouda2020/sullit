class RechargeWalletParams {
  String? amount;
  String? walletType;

  RechargeWalletParams({this.amount, this.walletType});

  Map<String, dynamic> toJson() => {
        "amount": amount,
        "payment_option": walletType,
      };
}
