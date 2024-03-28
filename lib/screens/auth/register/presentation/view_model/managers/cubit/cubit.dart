import 'package:bloodbank_donors/screens/auth/register/data/RegisterModel.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view_model/managers/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../../share/network/remote/api_endpoints.dart';
import '../../../../../../../share/network/remote/dioHelper.dart';

class RegisterCubit extends Cubit<RegisterStates> {
  RegisterCubit() : super(RegisterInitState());

  static RegisterCubit get(context) => BlocProvider.of(context);

  IconData suffixIcon = Icons.visibility;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffixIcon = isPassword ? Icons.visibility_off : Icons.visibility;
    emit(RegisterChangePasswordVisibilityState());
  }


  RegisterModel? registerModel;
  Future postRegisterUser({
    required String email,
    required String name,
    required String phone,
    required String address,
    required String birthday,
    required String bloodType,
    required String password,
  }) async {
    emit(RegisterUserLoadingState());
    try {
      var response= await DioHelper.postData(
        url:ApiEndPoints.registerUser,
        data: {
          "email": email,
          "password": password,
          "name": name,
          "phone": phone,
          "address": address,
          "birthday": birthday,
          "blood_type": bloodType,
        },
      );
      registerModel=RegisterModel.fromJson(response.data);
      print("${registerModel!.data!.email}   sssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
      emit(RegisterUserSuccessState(registerModel!));
    } catch (error) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
      print(error.toString());
      emit(RegisterUserErrorState(error.toString()));
    }
  }

  Future postRegisterHospital({
    required String email,
    required String name,
    required String phone,
    required String address,
    required String password,
  }) async {
    emit(RegisterHospitalLoadingState());
    try {
      var response= await DioHelper.postData(
        url:ApiEndPoints.registerHospital,
        data: {
          "email": email,
          "password": password,
          "name": name,
          "phone": phone,
          "address": address,
        },
      );
      registerModel=RegisterModel.fromJson(response.data);
      print("${registerModel!.data!.name}   sssssssssssssssssssssssssssssssssssssssssssssssssssssssssss");
      emit(RegisterHospitalSuccessState(registerModel!));
    } catch (error) {
      print("eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee");
      print(error.toString());
      emit(RegisterHospitalErrorState(error.toString()));
    }
  }




}
