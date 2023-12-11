class EditClassifiedProductParams {
  int id;

  String? name;
  int? categoryId;
  int? brandId;
  String? unit;
  String? condition;
  String? location;
  String? tags;
  String? photos;
  int? thumbnailImg;
  String? videoProvider;
  String? videoLink;
  String? metaTitle;
  String? metaDescription;
  int? metaImg;
  String? unitPrice;
  String? description;
  int? pdf;

  EditClassifiedProductParams({
    required this.id,
    this.name,
    this.categoryId,
    this.brandId,
    this.unit,
    this.condition,
    this.location,
    this.thumbnailImg,
    this.videoProvider,
    this.videoLink,
    this.metaTitle,
    this.metaDescription,
    this.description,
    this.pdf,
    this.metaImg,
    this.photos,
    this.tags,
    this.unitPrice,
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
