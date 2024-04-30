import 'package:shared_preferences/shared_preferences.dart';

class CacheHelper {
  static late SharedPreferences sharedPreferences;


  static shared() async {
    return sharedPreferences = await SharedPreferences.getInstance();
  }

  static dynamic getShared({
    required String key,
  })  {
    return  sharedPreferences.get(key);
  }

static  Future<bool> saveShared({
    required String key,
    required dynamic value,
})async{


    if (value is String)return await sharedPreferences.setString(key, value);
    if (value is int)return await sharedPreferences.setInt(key, value);
    if (value is bool)return await sharedPreferences.setBool(key, value);


    return await sharedPreferences.setDouble(key, value);

}


  static Future<bool> removeShared({
    required String key,
  })async{

    return await sharedPreferences.remove(key);
  }


}
