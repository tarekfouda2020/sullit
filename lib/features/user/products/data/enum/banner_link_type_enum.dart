
enum LinkTypeEnum {
  product,

  externalLink,

  category;

  bool get isCategory => this == LinkTypeEnum.category;

  bool get isExternal => this == LinkTypeEnum.externalLink;

  bool get isProduct => this == LinkTypeEnum.product;

}