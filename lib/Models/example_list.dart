class Example_list {
  int? _id;
  String? _title;
  dynamic? _bodyHtml;
  dynamic? _vendor;
  dynamic? _metafieldsGlobalTitleTag;
  dynamic? _metafieldsGlobalDescriptionTag;
  dynamic? _tags;
  String? _publishedScope;
  dynamic? _productType;
  dynamic? _meta;
  int? _commentCount;
  int? _orderCount;
  int? _viewCount;
  dynamic? _publishedAt;
  String? _createdAt;
  String? _updatedAt;
  dynamic? _deletedAt;
  dynamic? _imageId;
  dynamic? _brand;
  dynamic? _enTitle;
  dynamic? _war;
  dynamic? _commission;
  dynamic? _omdeDescription;
  bool? _isExist;
  dynamic? _collectionId;
  dynamic? _mobileImageId;
  int? _omdePrice;
  String? _productCode;
  int? _type;
  dynamic? _minCount;
  dynamic? _descriptionType;
  int? _count;
  int? _onePrice;
  bool? _show;
  dynamic? _gender;
  dynamic? _age;
  dynamic? _genderStr;
  List<dynamic>? _collections;
  dynamic? _brandProduct;
  List<dynamic>? _variants;
  List<dynamic>? _attr;
  List<dynamic>? _gallery;

  int? get id => _id;
  String? get title => _title;
  dynamic? get bodyHtml => _bodyHtml;
  dynamic? get vendor => _vendor;
  dynamic? get metafieldsGlobalTitleTag => _metafieldsGlobalTitleTag;
  dynamic? get metafieldsGlobalDescriptionTag => _metafieldsGlobalDescriptionTag;
  dynamic? get tags => _tags;
  String? get publishedScope => _publishedScope;
  dynamic? get productType => _productType;
  dynamic? get meta => _meta;
  int? get commentCount => _commentCount;
  int? get orderCount => _orderCount;
  int? get viewCount => _viewCount;
  dynamic? get publishedAt => _publishedAt;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic? get deletedAt => _deletedAt;
  dynamic? get imageId => _imageId;
  dynamic? get brand => _brand;
  dynamic? get enTitle => _enTitle;
  dynamic? get war => _war;
  dynamic? get commission => _commission;
  dynamic? get omdeDescription => _omdeDescription;
  bool? get isExist => _isExist;
  dynamic? get collectionId => _collectionId;
  dynamic? get mobileImageId => _mobileImageId;
  int? get omdePrice => _omdePrice;
  String? get productCode => _productCode;
  int? get type => _type;
  dynamic? get minCount => _minCount;
  dynamic? get descriptionType => _descriptionType;
  int? get count => _count;
  int? get onePrice => _onePrice;
  bool? get show => _show;
  dynamic? get gender => _gender;
  dynamic? get age => _age;
  dynamic? get genderStr => _genderStr;
  List<dynamic>? get collections => _collections;
  dynamic? get brandProduct => _brandProduct;
  List<dynamic>? get variants => _variants;
  List<dynamic>? get attr => _attr;
  List<dynamic>? get gallery => _gallery;

  Example_list({
      int? id, 
      String? title, 
      dynamic? bodyHtml, 
      dynamic? vendor, 
      dynamic? metafieldsGlobalTitleTag, 
      dynamic? metafieldsGlobalDescriptionTag, 
      dynamic? tags, 
      String? publishedScope, 
      dynamic? productType, 
      dynamic? meta, 
      int? commentCount, 
      int? orderCount, 
      int? viewCount, 
      dynamic? publishedAt, 
      String? createdAt, 
      String? updatedAt, 
      dynamic? deletedAt, 
      dynamic? imageId, 
      dynamic? brand, 
      dynamic? enTitle, 
      dynamic? war, 
      dynamic? commission, 
      dynamic? omdeDescription, 
      bool? isExist, 
      dynamic? collectionId, 
      dynamic? mobileImageId, 
      int? omdePrice,
      String? productCode, 
      int? type, 
      dynamic? minCount, 
      dynamic? descriptionType, 
      int? count, 
      int? onePrice, 
      bool? show, 
      dynamic? gender, 
      dynamic? age, 
      dynamic? genderStr,
      dynamic? brandProduct,}){
    _id = id;
    _title = title;
    _bodyHtml = bodyHtml;
    _vendor = vendor;
    _metafieldsGlobalTitleTag = metafieldsGlobalTitleTag;
    _metafieldsGlobalDescriptionTag = metafieldsGlobalDescriptionTag;
    _tags = tags;
    _publishedScope = publishedScope;
    _productType = productType;
    _meta = meta;
    _commentCount = commentCount;
    _orderCount = orderCount;
    _viewCount = viewCount;
    _publishedAt = publishedAt;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _imageId = imageId;
    _brand = brand;
    _enTitle = enTitle;
    _war = war;
    _commission = commission;
    _omdeDescription = omdeDescription;
    _isExist = isExist;
    _collectionId = collectionId;
    _mobileImageId = mobileImageId;
    _omdePrice = omdePrice;
    _productCode = productCode;
    _type = type;
    _minCount = minCount;
    _descriptionType = descriptionType;
    _count = count;
    _onePrice = onePrice;
    _show = show;
    _gender = gender;
    _age = age;
    _genderStr = genderStr;
    _collections = collections;
    _brandProduct = brandProduct;
    _variants = variants;
    _attr = attr;
    _gallery = gallery;
}

  Example_list.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _bodyHtml = json['body_html'];
    _vendor = json['vendor'];
    _metafieldsGlobalTitleTag = json['metafields_global_title_tag'];
    _metafieldsGlobalDescriptionTag = json['metafields_global_description_tag'];
    _tags = json['tags'];
    _publishedScope = json['published_scope'];
    _productType = json['product_type'];
    _meta = json['meta'];
    _commentCount = json['comment_count'];
    _orderCount = json['order_count'];
    _viewCount = json['view_count'];
    _publishedAt = json['published_at'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _imageId = json['image_id'];
    _brand = json['brand'];
    _enTitle = json['en_title'];
    _war = json['war'];
    _commission = json['commission'];
    _omdeDescription = json['omde_description'];
    _isExist = json['is_exist'];
    _collectionId = json['collection_id'];
    _mobileImageId = json['mobile_image_id'];
    _omdePrice = json['omde_price'];
    _productCode = json['product_code'];
    _type = json['type'];
    _minCount = json['min_count'];
    _descriptionType = json['description_type'];
    _count = json['count'];
    _onePrice = json['one_price'];
    _show = json['show'];
    _gender = json['gender'];
    _age = json['age'];
    _genderStr = json['gender_str'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['title'] = _title;
    map['body_html'] = _bodyHtml;
    map['vendor'] = _vendor;
    map['metafields_global_title_tag'] = _metafieldsGlobalTitleTag;
    map['metafields_global_description_tag'] = _metafieldsGlobalDescriptionTag;
    map['tags'] = _tags;
    map['published_scope'] = _publishedScope;
    map['product_type'] = _productType;
    map['meta'] = _meta;
    map['comment_count'] = _commentCount;
    map['order_count'] = _orderCount;
    map['view_count'] = _viewCount;
    map['published_at'] = _publishedAt;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['image_id'] = _imageId;
    map['brand'] = _brand;
    map['en_title'] = _enTitle;
    map['war'] = _war;
    map['commission'] = _commission;
    map['omde_description'] = _omdeDescription;
    map['is_exist'] = _isExist;
    map['collection_id'] = _collectionId;
    map['mobile_image_id'] = _mobileImageId;
    map['omde_price'] = _omdePrice;
    map['product_code'] = _productCode;
    map['type'] = _type;
    map['min_count'] = _minCount;
    map['description_type'] = _descriptionType;
    map['count'] = _count;
    map['one_price'] = _onePrice;
    map['show'] = _show;
    map['gender'] = _gender;
    map['age'] = _age;
    map['gender_str'] = _genderStr;
    if (_collections != null) {
      map['collections'] = _collections?.map((v) => v.toJson()).toList();
    }
    map['brand_product'] = _brandProduct;
    if (_variants != null) {
      map['variants'] = _variants?.map((v) => v.toJson()).toList();
    }
    if (_attr != null) {
      map['attr'] = _attr?.map((v) => v.toJson()).toList();
    }
    if (_gallery != null) {
      map['gallery'] = _gallery?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}