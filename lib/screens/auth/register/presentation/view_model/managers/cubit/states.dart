import '../../../../data/RegisterModel.dart';

abstract class RegisterStates {}

class RegisterInitState extends RegisterStates {}

class RegisterUserLoadingState extends RegisterStates {}

class RegisterUserSuccessState extends RegisterStates {
  final RegisterModel registerModel;

  RegisterUserSuccessState(this.registerModel);
}

class RegisterUserErrorState extends RegisterStates {
  final String error;

  RegisterUserErrorState(this.error);
}

class RegisterHospitalLoadingState extends RegisterStates {}

class RegisterHospitalSuccessState extends RegisterStates {
  final RegisterModel registerModel;

  RegisterHospitalSuccessState(this.registerModel);
}

class RegisterHospitalErrorState extends RegisterStates {
  final String error;

  RegisterHospitalErrorState(this.error);
}

class CreateUserSuccessState extends RegisterStates {}

class CreateUserErrorState extends RegisterStates {
  final String error;

  CreateUserErrorState(this.error);
}

class RegisterChangePasswordVisibilityState extends RegisterStates {}
