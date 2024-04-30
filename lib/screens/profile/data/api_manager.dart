import 'dart:convert';

import 'package:bloodbank_donors/screens/profile/data/ProfileResponseModel.dart';
import 'package:bloodbank_donors/share/network/remote/api_endpoints.dart';
import 'package:http/http.dart' as http;

class ApiManager {
  Future<ProfileResponse> getProfileResponse(String profileId) async {
    var headers = {'Authorization': 'Bearer $profileId'};
    /*
  http://127.0.0.1:8000/api/show-profile/1
   */
    Uri url = Uri.http(ApiEndPoints.domainLink, ApiEndPoints.prfile, headers);
    try {
      var response = await http.get(url);
      var bodyString = response.body;
      var json = jsonDecode(bodyString);
      return ProfileResponse.fromJson(json);
    } catch (e) {
      throw e;
    }
  }
}
