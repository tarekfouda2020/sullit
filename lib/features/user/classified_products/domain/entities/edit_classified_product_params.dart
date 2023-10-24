class EditClassifiedProductParams {
  int id ;
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
    'lang': 'en'
  };
}