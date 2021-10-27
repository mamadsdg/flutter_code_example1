class Login_model {
  int? _id;

  int? get id => _id;

  Login_model({
      int? id}){
    _id = id;
}

  Login_model.fromJson(dynamic json) {
    _id = json['id'];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['id'] = _id;
    return map;
  }

}