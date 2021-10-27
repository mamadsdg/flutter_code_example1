class Register_model1 {
  List<String>? _mobile;

  List<String>? get mobile => _mobile;

  Register_model1({
      List<String>? mobile}){
    _mobile = mobile;
}

  Register_model1.fromJson(dynamic json) {
    _mobile = json['mobile'] != null ? json['mobile'].cast<String>() : [];
  }

  Map<String, dynamic> toJson() {
    var map = <String, dynamic>{};
    map['mobile'] = _mobile;
    return map;
  }

}