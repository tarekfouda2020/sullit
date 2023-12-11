class AddClassifiedProductParams {
  String name;
  int categoryId;
  int brandId;
  String unit;
  String condition;
  String location;
  String tags;
  String photos;
  int? thumbnailImg;
  String? videoProvider;
  String? videoLink;
  String? metaTitle;
  String? metaDescription;
  int? metaImg;
  String unitPrice;
  String description;
  int? pdf;

  AddClassifiedProductParams({
    required this.name,
    required this.categoryId,
    required this.brandId,
    required this.unit,
    required this.condition,
    required this.location,
    this.thumbnailImg,
    this.videoProvider,
    this.videoLink,
    this.metaTitle,
    this.metaDescription,
    required this.description,
    this.pdf,
    this.metaImg,
    required this.photos,
    required this.tags,
    required this.unitPrice,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['category_id'] = categoryId;
    data['brand_id'] = brandId;
    data['unit'] = unit;
    data['conditon'] = condition;
    data['location'] = location;
    data['tags[]'] = tags;
    data['photos'] = photos;
    data['thumbnail_img'] = thumbnailImg;
    if (videoProvider != null) {
      data["video_provider"] = videoProvider;
    }
    if (videoLink != null && videoLink != "") {
      data["video_link"] = videoLink;
    }
    if (metaTitle != null && metaTitle != "") {
      data["meta_title"] = metaTitle;
    }
    if (metaDescription != null && metaDescription != "") {
      data["meta_description"] = metaDescription;
    }
    if (metaImg != null) {
      data["meta_img"] = metaImg;
    }
    data['unit_price'] = unitPrice;
    data['description'] = description;
    if (pdf != null) {
      data["pdf"] = pdf;
    }
    data['lang'] = "en";
    return data;
  }
}
