class DriverTipsModel {
  final String amount;
  bool isSelect;
  final bool isCustom;

  DriverTipsModel({
    required this.amount,
    this.isSelect = false,
    this.isCustom = false,
  });
}
