class CreatePostModel {
  CreatePostModel({
      this.description, 
      this.longtitude, 
      this.booldType, 
      this.latitude, 
      this.background, 
      this.userId, 
      this.updatedAt, 
      this.createdAt, 
      this.id,});

  CreatePostModel.fromJson(dynamic json) {
    description = json['description'];
    longtitude = json['longtitude'];
    booldType = json['boold_type'];
    latitude = json['latitude'];
    background = json['background'];
    userId = json['user_id'];
    updatedAt = json['updated_at'];
    createdAt = json['created_at'];
    id = json['id'];
  }
  String? description;
  String? longtitude;
  String? booldType;
  String? latitude;
  String? background;
  num? userId;
  String? updatedAt;
  String? createdAt;
  num? id;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['description'] = description;
    map['longtitude'] = longtitude;
    map['boold_type'] = booldType;
    map['latitude'] = latitude;
    map['background'] = background;
    map['user_id'] = userId;
    map['updated_at'] = updatedAt;
    map['created_at'] = createdAt;
    map['id'] = id;
    return map;
  }

}