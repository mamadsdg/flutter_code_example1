class Verify_model {
  int? _id;
  dynamic? _userId;
  String? _fname;
  String? _lname;
  String? _name;
  dynamic? _lastOrderId;
  dynamic? _meta;
  dynamic? _customerGroup;
  dynamic? _ordersCount;
  String? _mobile;
  dynamic? _tags;
  bool? _verified;
  dynamic? _totalSpent;
  dynamic? _email;
  dynamic? _defaultAddressId;
  dynamic? _acceptsMarketing;
  String? _createdAt;
  String? _updatedAt;
  dynamic? _deletedAt;
  String? _apiToken;
  int? _score;
  dynamic? _isCompeleteProfile;
  dynamic? _sex;
  dynamic? _ncode;
  dynamic? _birthDate;
  dynamic? _marriageDate;
  dynamic? _state;
  dynamic? _city;
  dynamic? _postCode;
  dynamic? _address;
  dynamic? _phoneNumber;
  dynamic? _bankNumber;
  String? _smsToken;
  List<dynamic>? _lastSeenAt;
  bool? _active;
  dynamic? _type;
  dynamic? _reagentMobile;
  dynamic? _website;
  dynamic? _printName;
  dynamic? _instagram;
  dynamic? _description;
  dynamic? _transfer;
  dynamic? _shopeName;
  int? _credit;
  dynamic? _financialCode;

  int? get id => _id;
  dynamic? get userId => _userId;
  String? get fname => _fname;
  String? get lname => _lname;
  String? get name => _name;
  dynamic? get lastOrderId => _lastOrderId;
  dynamic? get meta => _meta;
  dynamic? get customerGroup => _customerGroup;
  dynamic? get ordersCount => _ordersCount;
  String? get mobile => _mobile;
  dynamic? get tags => _tags;
  bool? get verified => _verified;
  dynamic? get totalSpent => _totalSpent;
  dynamic? get email => _email;
  dynamic? get defaultAddressId => _defaultAddressId;
  dynamic? get acceptsMarketing => _acceptsMarketing;
  String? get createdAt => _createdAt;
  String? get updatedAt => _updatedAt;
  dynamic? get deletedAt => _deletedAt;
  String? get apiToken => _apiToken;
  int? get score => _score;
  dynamic? get isCompeleteProfile => _isCompeleteProfile;
  dynamic? get sex => _sex;
  dynamic? get ncode => _ncode;
  dynamic? get birthDate => _birthDate;
  dynamic? get marriageDate => _marriageDate;
  dynamic? get state => _state;
  dynamic? get city => _city;
  dynamic? get postCode => _postCode;
  dynamic? get address => _address;
  dynamic? get phoneNumber => _phoneNumber;
  dynamic? get bankNumber => _bankNumber;
  String? get smsToken => _smsToken;
  bool? get active => _active;
  dynamic? get type => _type;
  dynamic? get reagentMobile => _reagentMobile;
  dynamic? get website => _website;
  dynamic? get printName => _printName;
  dynamic? get instagram => _instagram;
  dynamic? get description => _description;
  dynamic? get transfer => _transfer;
  dynamic? get shopeName => _shopeName;
  int? get credit => _credit;
  dynamic? get financialCode => _financialCode;

  Verify_model({
      int? id, 
      dynamic? userId, 
      String? fname, 
      String? lname, 
      String? name, 
      dynamic? lastOrderId, 
      dynamic? meta, 
      dynamic? customerGroup, 
      dynamic? ordersCount, 
      String? mobile, 
      dynamic? tags, 
      bool? verified, 
      dynamic? totalSpent, 
      dynamic? email, 
      dynamic? defaultAddressId, 
      dynamic? acceptsMarketing, 
      String? createdAt, 
      String? updatedAt, 
      dynamic? deletedAt, 
      String? apiToken, 
      int? score, 
      dynamic? isCompeleteProfile, 
      dynamic? sex, 
      dynamic? ncode, 
      dynamic? birthDate, 
      dynamic? marriageDate, 
      dynamic? state, 
      dynamic? city, 
      dynamic? postCode, 
      dynamic? address, 
      dynamic? phoneNumber, 
      dynamic? bankNumber, 
      String? smsToken, 
      List<dynamic>? lastSeenAt, 
      bool? active, 
      dynamic? type, 
      dynamic? reagentMobile, 
      dynamic? website, 
      dynamic? printName, 
      dynamic? instagram, 
      dynamic? description, 
      dynamic? transfer, 
      dynamic? shopeName, 
      int? credit, 
      dynamic? financialCode, 
      List<dynamic>? pin}){
    _id = id;
    _userId = userId;
    _fname = fname;
    _lname = lname;
    _name = name;
    _lastOrderId = lastOrderId;
    _meta = meta;
    _customerGroup = customerGroup;
    _ordersCount = ordersCount;
    _mobile = mobile;
    _tags = tags;
    _verified = verified;
    _totalSpent = totalSpent;
    _email = email;
    _defaultAddressId = defaultAddressId;
    _acceptsMarketing = acceptsMarketing;
    _createdAt = createdAt;
    _updatedAt = updatedAt;
    _deletedAt = deletedAt;
    _apiToken = apiToken;
    _score = score;
    _isCompeleteProfile = isCompeleteProfile;
    _sex = sex;
    _ncode = ncode;
    _birthDate = birthDate;
    _marriageDate = marriageDate;
    _state = state;
    _city = city;
    _postCode = postCode;
    _address = address;
    _phoneNumber = phoneNumber;
    _bankNumber = bankNumber;
    _smsToken = smsToken;
    _lastSeenAt = lastSeenAt;
    _active = active;
    _type = type;
    _reagentMobile = reagentMobile;
    _website = website;
    _printName = printName;
    _instagram = instagram;
    _description = description;
    _transfer = transfer;
    _shopeName = shopeName;
    _credit = credit;
    _financialCode = financialCode;
}

  Verify_model.fromJson(dynamic json) {
    _id = json['id'];
    _userId = json['user_id'];
    _fname = json['fname'];
    _lname = json['lname'];
    _name = json['name'];
    _lastOrderId = json['last_order_id'];
    _meta = json['meta'];
    _customerGroup = json['customer_group'];
    _ordersCount = json['orders_count'];
    _mobile = json['mobile'];
    _tags = json['tags'];
    _verified = json['verified'];
    _totalSpent = json['total_spent'];
    _email = json['email'];
    _defaultAddressId = json['default_address_id'];
    _acceptsMarketing = json['accepts_marketing'];
    _createdAt = json['created_at'];
    _updatedAt = json['updated_at'];
    _deletedAt = json['deleted_at'];
    _apiToken = json['api_token'];
    _score = json['score'];
    _isCompeleteProfile = json['is_compelete_profile'];
    _sex = json['sex'];
    _ncode = json['ncode'];
    _birthDate = json['birth_date'];
    _marriageDate = json['marriage_date'];
    _state = json['state'];
    _city = json['city'];
    _postCode = json['post_code'];
    _address = json['address'];
    _phoneNumber = json['phone_number'];
    _bankNumber = json['bank_number'];
    _smsToken = json['sms_token'];
    _active = json['active'];
    _type = json['type'];
    _reagentMobile = json['reagent_mobile'];
    _website = json['website'];
    _printName = json['print_name'];
    _instagram = json['instagram'];
    _description = json['description'];
    _transfer = json['transfer'];
    _shopeName = json['shope_name'];
    _credit = json['credit'];
    _financialCode = json['financial_code'];

  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    map['user_id'] = _userId;
    map['fname'] = _fname;
    map['lname'] = _lname;
    map['name'] = _name;
    map['last_order_id'] = _lastOrderId;
    map['meta'] = _meta;
    map['customer_group'] = _customerGroup;
    map['orders_count'] = _ordersCount;
    map['mobile'] = _mobile;
    map['tags'] = _tags;
    map['verified'] = _verified;
    map['total_spent'] = _totalSpent;
    map['email'] = _email;
    map['default_address_id'] = _defaultAddressId;
    map['accepts_marketing'] = _acceptsMarketing;
    map['created_at'] = _createdAt;
    map['updated_at'] = _updatedAt;
    map['deleted_at'] = _deletedAt;
    map['api_token'] = _apiToken;
    map['score'] = _score;
    map['is_compelete_profile'] = _isCompeleteProfile;
    map['sex'] = _sex;
    map['ncode'] = _ncode;
    map['birth_date'] = _birthDate;
    map['marriage_date'] = _marriageDate;
    map['state'] = _state;
    map['city'] = _city;
    map['post_code'] = _postCode;
    map['address'] = _address;
    map['phone_number'] = _phoneNumber;
    map['bank_number'] = _bankNumber;
    map['sms_token'] = _smsToken;
    if (_lastSeenAt != null) {
      map['last_seen_at'] = _lastSeenAt?.map((v) => v.toJson()).toList();
    }
    map['active'] = _active;
    map['type'] = _type;
    map['reagent_mobile'] = _reagentMobile;
    map['website'] = _website;
    map['print_name'] = _printName;
    map['instagram'] = _instagram;
    map['description'] = _description;
    map['transfer'] = _transfer;
    map['shope_name'] = _shopeName;
    map['credit'] = _credit;
    map['financial_code'] = _financialCode;
    return map;
  }

}