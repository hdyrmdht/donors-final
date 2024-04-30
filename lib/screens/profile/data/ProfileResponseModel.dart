class ProfileResponse {
  ProfileResponse({
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
      this.updatedAt,
    this.message,
    this.code,
  });

  ProfileResponse.fromJson(dynamic json) {
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
    message = json['message'];
    code = json['code'];

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
  String? message ;
  String? code ;


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