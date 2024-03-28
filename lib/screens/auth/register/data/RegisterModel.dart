import 'Data.dart';

/// status : 200
/// message : "create_user"
/// data : {"email":"ppqsola455@gmail.com","name":"polae","phone":"012040160782","address":"22 adakfj affhwe","birthday":null,"account_type":0,"updated_at":"2024-03-16T21:07:04.000000Z","created_at":"2024-03-16T21:07:04.000000Z","id":5}
/// token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYXBpL3JlZ2lzdGVyL2NvbXBhbnkiLCJpYXQiOjE3MTA2MjMyMjUsImV4cCI6MTcxMDYyNjgyNSwibmJmIjoxNzEwNjIzMjI1LCJqdGkiOiJVcnNrSktnNFk2Qm5lRElnIiwic3ViIjoiNSIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.jgr3vKkwC2V7XjrKQojrHPWyeZs3TFNWSGm3S2wnwSQ"

class RegisterModel {
  RegisterModel({
      this.status, 
      this.message, 
      this.data, 
      this.token,});

  RegisterModel.fromJson(dynamic json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    token = json['token'];
  }
  int? status;
  String? message;
  Data? data;
  String? token;
RegisterModel copyWith({  int? status,
  String? message,
  Data? data,
  String? token,
}) => RegisterModel(  status: status ?? this.status,
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