class Register_model2 {
  String? _mobile;
  String? _fname;
  String? _lname;
  String? _name;
  bool? _verified;
  int? _score;
  bool? _active;
  String? _updatedAt;
  String? _createdAt;
  int? _id;
  int? _smsToken;
  String? _apiToken;

  String? get mobile => _mobile;
  String? get fname => _fname;
  String? get lname => _lname;
  String? get name => _name;
  bool? get verified => _verified;
  int? get score => _score;
  bool? get active => _active;
  String? get updatedAt => _updatedAt;
  String? get createdAt => _createdAt;
  int? get id => _id;
  int? get smsToken => _smsToken;
  String? get apiToken => _apiToken;

  Register_model2({
      String? mobile, 
      String? fname, 
      String? lname, 
      String? name, 
      bool? verified, 
      int? score, 
      bool? active, 
      String? updatedAt, 
      String? createdAt, 
      int? id, 
      int? smsToken, 
      String? apiToken}){
    _mobile = mobile;
    _fname = fname;
    _lname = lname;
    _name = name;
    _verified = verified;
    _score = score;
    _active = active;
    _updatedAt = updatedAt;
    _createdAt = createdAt;
    _id = id;
    _smsToken = smsToken;
    _apiToken = apiToken;
}

  Register_model2.fromJson(dynamic json) {
    _mobile = json['mobile'];
    _fname = json['fname'];
    _lname = json['lname'];
    _name = json['name'];
    _verified = json['verified'];
    _score = json['score'];
    _active = json['active'];
    _updatedAt = json['updated_at'];
    _createdAt = json['created_at'];
    _id = json['id'];
    _smsToken = json['sms_token'];
    _apiToken = json['api_token'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['mobile'] = _mobile;
    map['fname'] = _fname;
    map['lname'] = _lname;
    map['name'] = _name;
    map['verified'] = _verified;
    map['score'] = _score;
    map['active'] = _active;
    map['updated_at'] = _updatedAt;
    map['created_at'] = _createdAt;
    map['id'] = _id;
    map['sms_token'] = _smsToken;
    map['api_token'] = _apiToken;
    return map;
  }

}