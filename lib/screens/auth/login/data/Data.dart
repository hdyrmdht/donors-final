/// id : 1
/// name : "pola20"
/// email : "ppqol@gmail.com"
/// email_verified_at : null
/// phone : "01204016858"
/// address : "22 adakfj affhw"
/// account_type : 1
/// birthday : "2024-02-01"
/// avtar : null
/// gender : 1
/// last_time_donaton : null
/// avalable_donotion : null
/// created_at : "2024-03-16T11:29:25.000000Z"
/// updated_at : "2024-03-16T11:29:25.000000Z"

class Data {
  Data({
      this.id, 
      this.name, 
      this.email, 
      this.emailVerifiedAt, 
      this.phone, 
      this.address, 
      this.accountType, 
      this.birthday, 
      this.avtar, 
      this.gender, 
      this.lastTimeDonaton, 
      this.avalableDonotion, 
      this.createdAt, 
      this.updatedAt,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    emailVerifiedAt = json['email_verified_at'];
    phone = json['phone'];
    address = json['address'];
    accountType = json['account_type'];
    birthday = json['birthday'];
    avtar = json['avtar'];
    gender = json['gender'];
    lastTimeDonaton = json['last_time_donaton'];
    avalableDonotion = json['avalable_donotion'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? name;
  String? email;
  dynamic emailVerifiedAt;
  String? phone;
  String? address;
  int? accountType;
  String? birthday;
  dynamic avtar;
  int? gender;
  dynamic lastTimeDonaton;
  dynamic avalableDonotion;
  String? createdAt;
  String? updatedAt;
Data copyWith({  int? id,
  String? name,
  String? email,
  dynamic emailVerifiedAt,
  String? phone,
  String? address,
  int? accountType,
  String? birthday,
  dynamic avtar,
  int? gender,
  dynamic lastTimeDonaton,
  dynamic avalableDonotion,
  String? createdAt,
  String? updatedAt,
}) => Data(  id: id ?? this.id,
  name: name ?? this.name,
  email: email ?? this.email,
  emailVerifiedAt: emailVerifiedAt ?? this.emailVerifiedAt,
  phone: phone ?? this.phone,
  address: address ?? this.address,
  accountType: accountType ?? this.accountType,
  birthday: birthday ?? this.birthday,
  avtar: avtar ?? this.avtar,
  gender: gender ?? this.gender,
  lastTimeDonaton: lastTimeDonaton ?? this.lastTimeDonaton,
  avalableDonotion: avalableDonotion ?? this.avalableDonotion,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['email_verified_at'] = emailVerifiedAt;
    map['phone'] = phone;
    map['address'] = address;
    map['account_type'] = accountType;
    map['birthday'] = birthday;
    map['avtar'] = avtar;
    map['gender'] = gender;
    map['last_time_donaton'] = lastTimeDonaton;
    map['avalable_donotion'] = avalableDonotion;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}