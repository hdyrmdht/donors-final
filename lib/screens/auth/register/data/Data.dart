/// email : "ppqsola455@gmail.com"
/// name : "polae"
/// phone : "012040160782"
/// address : "22 adakfj affhwe"
/// birthday : null
/// account_type : 0
/// updated_at : "2024-03-16T21:07:04.000000Z"
/// created_at : "2024-03-16T21:07:04.000000Z"
/// id : 5

class Data {
  Data({
      this.email, 
      this.name, 
      this.phone, 
      this.address, 
      this.birthday, 
      this.accountType, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  Data.fromJson(dynamic json) {
    email = json['email'];
    name = json['name'];
    phone = json['phone'];
    address = json['address'];
    birthday = json['birthday'];
    accountType = json['account_type'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? email;
  String? name;
  String? phone;
  String? address;
  dynamic birthday;
  int? accountType;
  String? updatedAt;
  String? createdAt;
  int? id;
Data copyWith({  String? email,
  String? name,
  String? phone,
  String? address,
  dynamic birthday,
  int? accountType,
  String? updatedAt,
  String? createdAt,
  int? id,
}) => Data(  email: email ?? this.email,
  name: name ?? this.name,
  phone: phone ?? this.phone,
  address: address ?? this.address,
  birthday: birthday ?? this.birthday,
  accountType: accountType ?? this.accountType,
  updatedAt: updatedAt ?? this.updatedAt,
  createdAt: createdAt ?? this.createdAt,
  id: id ?? this.id,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = email;
    map['name'] = name;
    map['phone'] = phone;
    map['address'] = address;
    map['birthday'] = birthday;
    map['account_type'] = accountType;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}