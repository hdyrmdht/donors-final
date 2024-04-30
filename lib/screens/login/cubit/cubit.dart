import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadeer_add/screens/login/cubit/states.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(InitiLoginStates());

  static LoginCubit get(context) => BlocProvider.of(context);

  // void sginIn({
  //   required String email,
  //   required String password,
  // }) {
  //   FirebaseAuth.instance.signInWithEmailAndPassword(
  //       email: email, password: password).then((value) {
  //
  //     emit(SuccessLoginStates(value.user!.uid));
  //
  //   }).catchError((error){
  //     emit(ErrorLoginStates(error.toString()));
  //   });
  // }

  bool isPasswordshowen = true;
  IconData icons = Icons.visibility_off;

  void ChangeVisibility() {
    isPasswordshowen = !isPasswordshowen;
    icons = isPasswordshowen ? Icons.visibility_off : Icons.visibility;
    emit(ChangeVisibilityLoginStates());
  }
}
