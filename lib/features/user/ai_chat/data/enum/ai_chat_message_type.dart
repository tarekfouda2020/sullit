enum AiChatMessageType {
  text,
  product,
  products,
  shops,
  branches,
  cart,
  order,
  handoff;

  static AiChatMessageType fromApi(String? value) {
    return AiChatMessageType.values.firstWhere(
      (type) => type.name == value,
      orElse: () => AiChatMessageType.text,
    );
  }
}
