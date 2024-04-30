import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bloodbank_donors/screens/auth/login/data/LoginModel.dart';
import 'package:bloodbank_donors/screens/auth/login/presentation/view_model/managers/cubit/states.dart';

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

  LoginModel? loginModel;
  Future postLogin({
    required String password,
    required String email,
  }) async {
    emit(LoginLoadingStates());
    try {
      var response = await DioHelper.postData(
        url: ApiEndPoints.login,
        data: {
          "email": email,
          "password": password,
        },
      );
      loginModel = LoginModel.fromJson(response.data);
      emit(LoginSuccessStates(loginModel!));
    } catch (error) {
      print(error.toString());
      emit(LoginErrorStates(error.toString()));
    }
  }
}
