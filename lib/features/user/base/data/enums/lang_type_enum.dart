enum LangTypeEnum {
  arabic,
  english,
  urdu,
  bangladesh;

  /// these codes returned from back-end and send it back to him for changing lang from its side
  String getLangCode() {
    switch (this) {
      case arabic:
        return "sa";
      case english:
        return "en";
      case urdu:
        return "pk";
      case bangladesh:
        return "bd";
    }
  }
}
