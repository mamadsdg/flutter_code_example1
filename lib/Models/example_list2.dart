class Example_list2 {
  int? _id;
  String? _title;
  dynamic? _commentCount;
  dynamic? _orderCount;
  int? _viewCount;
  String? _publishedAt;
  String? _createdAt;
  int? _imageId;
  dynamic? _brand;
  dynamic? _enTitle;
  bool? _isExist;
  dynamic? _mobileImageId;
  int? _omdePrice;
  int? _minCount;
  int? _count;
  dynamic? _onePrice;
  bool? _show;
  dynamic? _gender;
  dynamic? _age;
  dynamic? _genderStr;
  dynamic? _brandProduct;
  int? get id => _id;
  String? get title => _title;
  dynamic? get commentCount => _commentCount;
  dynamic? get orderCount => _orderCount;
  int? get viewCount => _viewCount;
  String? get publishedAt => _publishedAt;
  String? get createdAt => _createdAt;
  int? get imageId => _imageId;
  dynamic? get brand => _brand;
  dynamic? get enTitle => _enTitle;
  bool? get isExist => _isExist;
  dynamic? get mobileImageId => _mobileImageId;
  int? get omdePrice => _omdePrice;
  int? get minCount => _minCount;
  int? get count => _count;
  dynamic? get onePrice => _onePrice;
  bool? get show => _show;
  dynamic? get gender => _gender;
  dynamic? get age => _age;
  dynamic? get genderStr => _genderStr;
  dynamic? get brandProduct => _brandProduct;

  Example_list2({
      int? id, 
      String? title, 
      dynamic? bodyHtml, 
      dynamic? vendor, 
      dynamic? metafieldsGlobalTitleTag, 
      String? metafieldsGlobalDescriptionTag,
      String? publishedScope, 
      int? productType,
      dynamic? commentCount, 
      dynamic? orderCount, 
      int? viewCount, 
      String? publishedAt, 
      String? createdAt, 
      String? updatedAt, 
      dynamic? deletedAt, 
      int? imageId, 
      dynamic? brand, 
      dynamic? enTitle,
      int? commission, 
      dynamic? omdeDescription, 
      bool? isExist, 
      int? collectionId, 
      dynamic? mobileImageId, 
      int? omdePrice, 
      dynamic? productCode, 
      dynamic? type, 
      int? minCount, 
      dynamic? descriptionType, 
      int? count, 
      dynamic? onePrice, 
      bool? show, 
      dynamic? gender, 
      dynamic? age, 
      dynamic? genderStr,
      dynamic? brandProduct,}){
    _id = id;
    _title = title;
    _commentCount = commentCount;
    _orderCount = orderCount;
    _viewCount = viewCount;
    _publishedAt = publishedAt;
    _createdAt = createdAt;
    _imageId = imageId;
    _brand = brand;
    _enTitle = enTitle;
    _isExist = isExist;
    _mobileImageId = mobileImageId;
    _omdePrice = omdePrice;
    _minCount = minCount;
    _count = count;
    _onePrice = onePrice;
    _show = show;
    _gender = gender;
    _age = age;
    _genderStr = genderStr;
    _brandProduct = brandProduct;
}

  Example_list2.fromJson(dynamic json) {
    _id = json['id'];
    _title = json['title'];
    _commentCount = json['comment_count'];
    _orderCount = json['order_count'];
    _viewCount = json['view_count'];
    _publishedAt = json['published_at'];
    _createdAt = json['created_at'];
    _imageId = json['image_id'];
    _brand = json['brand'];
    _enTitle = json['en_title'];
    _isExist = json['is_exist'];
    _mobileImageId = json['mobile_image_id'];
    _omdePrice = json['omde_price'];
    _minCount = json['min_count'];
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
    map['comment_count'] = _commentCount;
    map['order_count'] = _orderCount;
    map['view_count'] = _viewCount;
    map['published_at'] = _publishedAt;
    map['created_at'] = _createdAt;
    map['image_id'] = _imageId;
    map['brand'] = _brand;
    map['en_title'] = _enTitle;
    map['is_exist'] = _isExist;
    map['mobile_image_id'] = _mobileImageId;
    map['omde_price'] = _omdePrice;
    map['min_count'] = _minCount;
    map['count'] = _count;
    map['one_price'] = _onePrice;
    map['show'] = _show;
    map['gender'] = _gender;
    map['age'] = _age;
    map['gender_str'] = _genderStr;
    return map;
  }

}

class Gallery {
  int? _id;
  int? _fileId;
  int? _position;
  int? _productsId;
  dynamic? _variantId;
  int? _uid;
  String? _storage;
  String? _createdAt;
  String? _updatedAt;
  String? _src;

  int? get id => _id;
  int? get fileId => _fileId;
  int? get position => _position;
  int? get productsId => _productsId;
  dynamic? get variantId => _variantId;
  int? get uid => _uid;
  String? get storage => _storage;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  String? get src => _src;

  Gallery({
      int? id, 
      int? fileId, 
      int? position, 
      int? productsId, 
      dynamic? variantId, 
      int? uid, 
      String? storage, 
      String? createdAt, 
      String? updatedAt, 
      String? src}){
    _id = id;
    _fileId = fileId;
    _position = position;
    _productsId = productsId;
    _variantId = variantId;
    _uid = uid;
    _storage = storage;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _src = src;
}

  Gallery.fromJson(dynamic json) {
    _id = json['id'];
    _fileId = json['file_id'];
    _position = json['position'];
    _productsId = json['products_id'];
    _variantId = json['variant_id'];
    _uid = json['uid'];
    _storage = json['storage'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _src = json['src'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['file_id'] = _fileId;
    map['position'] = _position;
    map['products_id'] = _productsId;
    map['variant_id'] = _variantId;
    map['uid'] = _uid;
    map['storage'] = _storage;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['src'] = _src;
    return map;
  }

}

class Attr {
  int? _id;
  int? _attributesId;
  String? _value;
  int? _productId;
  bool? _isTop;
  String? _createdAt;
  String? _updatedAt;
  dynamic? _deletedAt;
  String? _title;
  dynamic? _valueStr;
  int? _valueType;

  int? get id => _id;
  int? get attributesId => _attributesId;
  String? get value => _value;
  int? get productId => _productId;
  bool? get isTop => _isTop;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic? get deletedAt => _deletedAt;
  String? get title => _title;
  dynamic? get valueStr => _valueStr;
  int? get valueType => _valueType;

  Attr({
      int? id, 
      int? attributesId, 
      String? value, 
      int? productId, 
      bool? isTop, 
      String? createdAt, 
      String? updatedAt, 
      dynamic? deletedAt, 
      String? title, 
      dynamic? valueStr, 
      int? valueType}){
    _id = id;
    _attributesId = attributesId;
    _value = value;
    _productId = productId;
    _isTop = isTop;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _title = title;
    _valueStr = valueStr;
    _valueType = valueType;
}

  Attr.fromJson(dynamic json) {
    _id = json['id'];
    _attributesId = json['attributes_id'];
    _value = json['value'];
    _productId = json['product_id'];
    _isTop = json['is_top'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _title = json['title'];
    _valueStr = json['value_str'];
    _valueType = json['value_type'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['attributes_id'] = _attributesId;
    map['value'] = _value;
    map['product_id'] = _productId;
    map['is_top'] = _isTop;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['title'] = _title;
    map['value_str'] = _valueStr;
    map['value_type'] = _valueType;
    return map;
  }

}

class Variants {
  int? _id;
  dynamic? _barcode;
  int? _originalPrice;
  int? _price;
  dynamic? _fulfillmentService;
  dynamic? _grams;
  dynamic? _imageId;
  int? _inventoryItemId;
  dynamic? _inventoryManagement;
  String? _inventoryPolicy;
  dynamic? _inventoryQuantity;
  dynamic? _inventoryQuantityAdjustment;
  dynamic? _meta;
  int? _position;
  int? _productId;
  dynamic? _requiresShipping;
  dynamic? _sku;
  dynamic? _taxable;
  String? _title;
  dynamic? _weight;
  dynamic? _weightUnit;
  dynamic? _orderCount;
  String? _createdAt;
  String? _updatedAt;
  dynamic? _deletedAt;
  String? _waranty;
  dynamic? _consent;
  dynamic? _seller;
  dynamic? _readyToSend;
  dynamic? _commission;
  dynamic? _lock;
  bool? _isExist;
  dynamic? _color;
  dynamic? _qty;
  dynamic? _size;
  dynamic? _gender;
  dynamic? _colorStr;
  dynamic? _image;
  dynamic? _pSeller;

  int? get id => _id;
  dynamic? get barcode => _barcode;
  int? get originalPrice => _originalPrice;
  int? get price => _price;
  dynamic? get fulfillmentService => _fulfillmentService;
  dynamic? get grams => _grams;
  dynamic? get imageId => _imageId;
  int? get inventoryItemId => _inventoryItemId;
  dynamic? get inventoryManagement => _inventoryManagement;
  String? get inventoryPolicy => _inventoryPolicy;
  dynamic? get inventoryQuantity => _inventoryQuantity;
  dynamic? get inventoryQuantityAdjustment => _inventoryQuantityAdjustment;
  dynamic? get meta => _meta;
  int? get position => _position;
  int? get productId => _productId;
  dynamic? get requiresShipping => _requiresShipping;
  dynamic? get sku => _sku;
  dynamic? get taxable => _taxable;
  String? get title => _title;
  dynamic? get weight => _weight;
  dynamic? get weightUnit => _weightUnit;
  dynamic? get orderCount => _orderCount;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic? get deletedAt => _deletedAt;
  String? get waranty => _waranty;
  dynamic? get consent => _consent;
  dynamic? get seller => _seller;
  dynamic? get readyToSend => _readyToSend;
  dynamic? get commission => _commission;
  dynamic? get lock => _lock;
  bool? get isExist => _isExist;
  dynamic? get color => _color;
  dynamic? get qty => _qty;
  dynamic? get size => _size;
  dynamic? get gender => _gender;
  dynamic? get colorStr => _colorStr;
  dynamic? get image => _image;
  dynamic? get pSeller => _pSeller;

  Variants({
      int? id, 
      dynamic? barcode, 
      int? originalPrice, 
      int? price, 
      dynamic? fulfillmentService, 
      dynamic? grams, 
      dynamic? imageId, 
      int? inventoryItemId, 
      dynamic? inventoryManagement, 
      String? inventoryPolicy, 
      dynamic? inventoryQuantity, 
      dynamic? inventoryQuantityAdjustment, 
      dynamic? meta, 
      int? position, 
      int? productId, 
      dynamic? requiresShipping, 
      dynamic? sku, 
      dynamic? taxable, 
      String? title, 
      dynamic? weight, 
      dynamic? weightUnit, 
      dynamic? orderCount, 
      String? createdAt, 
      String? updatedAt, 
      dynamic? deletedAt, 
      String? waranty, 
      dynamic? consent, 
      dynamic? seller, 
      dynamic? readyToSend, 
      dynamic? commission, 
      dynamic? lock, 
      bool? isExist, 
      dynamic? color, 
      dynamic? qty, 
      dynamic? size, 
      dynamic? gender, 
      dynamic? colorStr, 
      dynamic? image, 
      dynamic? pSeller}){
    _id = id;
    _barcode = barcode;
    _originalPrice = originalPrice;
    _price = price;
    _fulfillmentService = fulfillmentService;
    _grams = grams;
    _imageId = imageId;
    _inventoryItemId = inventoryItemId;
    _inventoryManagement = inventoryManagement;
    _inventoryPolicy = inventoryPolicy;
    _inventoryQuantity = inventoryQuantity;
    _inventoryQuantityAdjustment = inventoryQuantityAdjustment;
    _meta = meta;
    _position = position;
    _productId = productId;
    _requiresShipping = requiresShipping;
    _sku = sku;
    _taxable = taxable;
    _title = title;
    _weight = weight;
    _weightUnit = weightUnit;
    _orderCount = orderCount;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _waranty = waranty;
    _consent = consent;
    _seller = seller;
    _readyToSend = readyToSend;
    _commission = commission;
    _lock = lock;
    _isExist = isExist;
    _color = color;
    _qty = qty;
    _size = size;
    _gender = gender;
    _colorStr = colorStr;
    _image = image;
    _pSeller = pSeller;
}

  Variants.fromJson(dynamic json) {
    _id = json['id'];
    _barcode = json['barcode'];
    _originalPrice = json['original_price'];
    _price = json['price'];
    _fulfillmentService = json['fulfillment_service'];
    _grams = json['grams'];
    _imageId = json['image_id'];
    _meta = json['meta'];
    _position = json['position'];
    _productId = json['product_id'];
    _requiresShipping = json['requires_shipping'];
    _sku = json['sku'];
    _taxable = json['taxable'];
    _title = json['title'];
    _weight = json['weight'];
    _weightUnit = json['weight_unit'];
    _orderCount = json['order_count'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _waranty = json['waranty'];
    _consent = json['consent'];
    _seller = json['seller'];
    _readyToSend = json['ready_to_send'];
    _commission = json['commission'];
    _lock = json['lock'];
    _isExist = json['is_exist'];
    _color = json['color'];
    _size = json['size'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['barcode'] = _barcode;
    map['original_price'] = _originalPrice;
    map['price'] = _price;
    map['fulfillment_service'] = _fulfillmentService;
    map['grams'] = _grams;
    map['image_id'] = _imageId;
    map['inventory_item_id'] = _inventoryItemId;
    map['inventory_management'] = _inventoryManagement;
    map['inventory_policy'] = _inventoryPolicy;
    map['inventory_quantity'] = _inventoryQuantity;
    map['inventory_quantity_adjustment'] = _inventoryQuantityAdjustment;
    map['meta'] = _meta;
    map['position'] = _position;
    map['product_id'] = _productId;
    map['requires_shipping'] = _requiresShipping;
    map['sku'] = _sku;
    map['taxable'] = _taxable;
    map['title'] = _title;
    map['weight'] = _weight;
    map['weight_unit'] = _weightUnit;
    map['order_count'] = _orderCount;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['waranty'] = _waranty;
    map['consent'] = _consent;
    map['seller'] = _seller;
    map['ready_to_send'] = _readyToSend;
    map['commission'] = _commission;
    map['lock'] = _lock;
    map['is_exist'] = _isExist;
    map['color'] = _color;
    map['qty'] = _qty;
    map['size'] = _size;
    map['gender'] = _gender;
    map['color_str'] = _colorStr;
    map['image'] = _image;
    map['p_seller'] = _pSeller;
    return map;
  }

}

class Collections {
  int? _id;
  int? _collectionId;
  dynamic? _position;
  int? _productId;
  dynamic? _sortValue;
  String? _createdAt;
  String? _updatedAt;

  int? get id => _id;
  int? get collectionId => _collectionId;
  dynamic? get position => _position;
  int? get productId => _productId;
  dynamic? get sortValue => _sortValue;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;

  Collections({
      int? id, 
      int? collectionId, 
      dynamic? position, 
      int? productId, 
      dynamic? sortValue, 
      String? createdAt, 
      String? updatedAt}){
    _id = id;
    _collectionId = collectionId;
    _position = position;
    _productId = productId;
    _sortValue = sortValue;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
}

  Collections.fromJson(dynamic json) {
    _id = json['id'];
    _collectionId = json['collection_id'];
    _position = json['position'];
    _productId = json['product_id'];
    _sortValue = json['sort_value'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['collection_id'] = _collectionId;
    map['position'] = _position;
    map['product_id'] = _productId;
    map['sort_value'] = _sortValue;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    return map;
  }

}