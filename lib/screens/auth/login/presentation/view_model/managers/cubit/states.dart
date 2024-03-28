import '../../../../data/LoginModel.dart';

abstract class LoginStates {}

class LoginInitStates extends LoginStates {}

class LoginLoadingStates extends LoginStates {}

class LoginSuccessStates extends LoginStates {
  final LoginModel loginModel;

  LoginSuccessStates(this.loginModel);
}

class LoginErrorStates extends LoginStates {
  final String error;

  LoginErrorStates(this.error);
}

class ChangeVisibilityLoginStates extends LoginStates {}
