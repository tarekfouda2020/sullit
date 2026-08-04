class FlexibleValue {
  final int? intValue;
  final String? stringValue;

  const FlexibleValue._({
    this.intValue,
    this.stringValue,
  });

  factory FlexibleValue.fromJson(Object? json) {
    if (json is int) {
      return FlexibleValue._(intValue: json);
    }

    if (json is String) {
      return FlexibleValue._(stringValue: json);
    }

    return const FlexibleValue._();
  }

  Object? toJson() => intValue ?? stringValue;

  bool get isInt => intValue != null;
  bool get isString => stringValue != null;

  String get asString => stringValue ?? intValue?.toString() ?? '';
}
