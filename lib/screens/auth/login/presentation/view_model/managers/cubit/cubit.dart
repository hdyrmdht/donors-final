
import 'package:bloodbank_donors/screens/auth/login/presentation/view_model/managers/cubit/states.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../share/network/remote/api_endpoints.dart';
import '../../../../../../../share/network/remote/dioHelper.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitStates());
  static LoginCubit get(context) => BlocProvider.of(context);

  bool isPasswordShown = true;
  IconData icons = Icons.visibility_off;
  void changeVisibility() {
    isPasswordShown = !isPasswordShown;
    icons = isPasswordShown ? Icons.visibility_off : Icons.visibility;
    emit(ChangeVisibilityLoginStates());
  }
  Future postLogin({
    required String password,
    required String email,
  }) async {
    emit(LoginLoadingStates());
    try {
      await DioHelper.postData(
        url:ApiEndPoints.login,
        // data: {
        //   "email": "ppqol@gmail.com",
        //   "password": "123456789",
        // },
        data: {
          "email": "${email}",
          "password": "${password}",
        },
      );
      print("sssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
      emit(LoginSuccessStates());
    } catch (error) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
      print(error.toString());
      emit(LoginErrorStates(error.toString()));
    }
  }

}
