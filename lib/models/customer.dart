class Customer {
  String? _id;
  String? _fullname;
  String? _phone;
  String? _identityNumber;

  Customer(
      {required String id,
      required String fullname,
      required String phone,
      required String identityNumber});

  Customer.fromJson(dynamic json) {
    _id = json['id'];
    _fullname = json['fullname'];
    _phone = json['phone'];
    _identityNumber = json['identityNumber'];
  }

  Customer copyWith({
    required String id,
    required String fullname,
    required String phone,
    required String identityNumber,
  }) =>
      Customer(
        id: id,
        fullname: fullname,
        phone: phone,
        identityNumber: identityNumber,
      );

  String? get id => _id;
  String? get fullname => _fullname;
  String? get phone => _phone;
  String? get identityNumber => _identityNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['fullname'] = _fullname;
    map['phone'] = _phone;
    map['identityNumber'] = _identityNumber;
    return map;
  }
}
