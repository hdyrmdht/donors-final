import 'package:flutter/material.dart';

import '../../screens/auth/login/presentation/view/screens/login.dart';
import 'cache_helper.dart';

void sinOut(context){
  CacheHelper.sharedPreferences.remove('token').then((value){
    if(value) {
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) =>  Login(),
        ),
          (route)=>false
      );(context, Login());
    }
  });
}

//ميثود علشان تعرض النص كامل
void printFullText(String text){
  final pattern =RegExp('{1,800}');//800 is the size of each chunk
  pattern.allMatches(text).forEach((match) =>print(match.group(0)));
}


String? token='';