enum OrderModificationEnum {

  updatePrice("update_price"),
  replace("replace"),
  reduce("reduce"),
  remove("remove"),
  add("add");

  final String value;

  const OrderModificationEnum(this.value);
}