class DeletePostModel {
  DeletePostModel({
      this.id, 
      this.userId, 
      this.description, 
      this.booldType, 
      this.longtitude, 
      this.latitude, 
      this.background, 
      this.createdAt, 
      this.updatedAt,});

  DeletePostModel.fromJson(dynamic json) {
    id = json['id'];
    userId = json['user_id'];
    description = json['description'];
    booldType = json['boold_type'];
    longtitude = json['longtitude'];
    latitude = json['latitude'];
    background = json['background'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
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
    return map;
  }

}