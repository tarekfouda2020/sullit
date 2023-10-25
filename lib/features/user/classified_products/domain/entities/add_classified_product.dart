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
  String videoLink;
  String metaTitle;
  String metaDescription;
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
    required this.videoLink,
    required this.metaTitle,
    required this.metaDescription,
    required this.description,
     this.pdf,
     this.metaImg,
    required this.photos,
    required this.tags,
    required this.unitPrice,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'category_id': categoryId,
        'brand_id': brandId,
        'unit': unit,
        'conditon': condition,
        'location': location,
        'tags[]': tags,
        'photos': photos,
        'thumbnail_img': thumbnailImg,
        'video_provider': videoProvider,
        'video_link': videoLink,
        'meta_title': metaTitle,
        'meta_description': metaDescription,
        'meta_img': metaImg,
        'unit_price': unitPrice,
        'description': description,
        'pdf': pdf,
      };
}
