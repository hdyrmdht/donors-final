class HomePostModel {
  HomePostModel({
      this.id, 
      this.userId, 
      this.description, 
      this.booldType, 
      this.longtitude, 
      this.latitude, 
      this.background, 
      this.createdAt, 
      this.updatedAt, 
      this.booldType2,});

  HomePostModel.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    description = json['description'];
    booldType = json['boold_type'];
    longtitude = json['longtitude'];
    latitude = json['latitude'];
    background = json['background'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    booldType2 = json['booldType'];
  }
  num? id;
  num? userId;
  String? description;
  num? booldType;
  String? longtitude;
  String? latitude;
  String? background;
  String? createdAt;
  String? updatedAt;
  String? booldType2;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['user_id'] = userId;
    map['description'] = description;
    map['boold_type'] = booldType;
    map['longtitude'] = longtitude;
    map['latitude'] = latitude;
    map['background'] = background;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['booldType'] = booldType2;
    return map;
  }

}