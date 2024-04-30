import 'Data.dart';

/// status : 200
/// message : "login_user"
/// data : {"id":1,"name":"pola20","email":"ppqol@gmail.com","email_verified_at":null,"phone":"01204016858","address":"22 adakfj affhw","account_type":1,"birthday":"2024-02-01","avtar":null,"gender":1,"last_time_donaton":null,"avalable_donotion":null,"created_at":"2024-03-16T11:29:25.000000Z","updated_at":"2024-03-16T11:29:25.000000Z"}
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL2xvZ2luIiwiaWF0IjoxNzEwNTg4NzUzLCJleHAiOjE3MTA1OTIzNTMsIm5iZiI6MTcxMDU4ODc1MywianRpIjoiZTFvM0M3SW5UVG5FTHpsNiIsInN1YiI6IjEiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.gnBVuVm1ybixyxYzL7qPw2oo6duEg1Vqb7AGjX-mofk"

class LoginModel {
  LoginModel({
      this.status, 
      this.message, 
      this.data, 
      this.token,});

  LoginModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    token = json['token'];
  }
  int? status;
  String? message;
  Data? data;
  String? token;
LoginModel copyWith({  int? status,
  String? message,
  Data? data,
  String? token,
}) => LoginModel(  status: status ?? this.status,
  message: message ?? this.message,
  data: data ?? this.data,
  token: token ?? this.token,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    map['token'] = token;
    return map;
  }

}