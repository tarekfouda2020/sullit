enum ProductType {
  general,
  pharmacy;

  static ProductType fromString(String? value) {
    switch (value) {
      case 'pharmacy':
        return ProductType.pharmacy;
      case 'general':
        return ProductType.general;
      default:
        return ProductType.general;
    }
  }

  String toApiString() {
    switch (this) {
      case ProductType.pharmacy:
        return 'pharmacy';
      case ProductType.general:
        return 'general';
    }
  }
}
