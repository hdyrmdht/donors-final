import 'package:bloodbank_donors/screens/register/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatRegisterCubit extends Cubit<ChatRegisterStates> {
  ChatRegisterCubit() : super(RegisterInitiState());

  static ChatRegisterCubit get(context) => BlocProvider.of(context);

  // void userRegister({
  //   required String name,
  //   required String phone,
  //   required String email,
  //   required String password,
  // }) {
  //   emit(RegisterLoadingState());
  //
  //   FirebaseAuth.instance
  //       .createUserWithEmailAndPassword(email: email, password: password)
  //       .then((value) {
  //     createUser(
  //         name: name,
  //         email: email,
  //         password: password,
  //         uid: value.user!.uid,
  //         phone: phone);
  //   }).catchError((error) {
  //     print(error.toString());
  //     emit(RegisterErrorState(error.toString()));
  //   });
  // }

  // void createUser({
  //   required String name,
  //   required String email,
  //   required String password,
  //   required String phone,
  //   required String uid,
  // }) {
  //   CreateUserModel model = CreateUserModel(
  //     email: email,
  //     name: name,
  //     password: password,
  //     uid: uid,
  //     phone: phone,
  //     image: 'assets/images/profile.png',
  //     bio: 'Your Bio',
  //     isEmailVerify: false,
  //   );
  //
  //   FirebaseFirestore.instance
  //       .collection('users')
  //       .doc(uid)
  //       .set(
  //         model.toMap(),
  //       )
  //       .then((value) {
  //     emit(CreateUserSuccessState());
  //   }).catchError((error) {
  //     emit(CreateUserErrorState(error.toString()));
  //   });
  // }

  IconData sufixIcon = Icons.visibility;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    sufixIcon = isPassword ? Icons.visibility_off : Icons.visibility;
    emit(SocialRegisterChangePassowrdVisibilityState());
  }
}
