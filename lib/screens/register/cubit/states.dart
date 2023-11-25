


abstract class ChatRegisterStates{}
class RegisterInitiState extends ChatRegisterStates{}
class RegisterLoadingState extends ChatRegisterStates{}
class SocialRegisterChangePassowrdVisibilityState extends ChatRegisterStates{}
class RegisterSuccessState extends ChatRegisterStates{


}
class RegisterErrorState extends ChatRegisterStates{
  final String Error;
  RegisterErrorState(this.Error);
}



class CreateUserSuccessState extends ChatRegisterStates{

}
class CreateUserErrorState extends ChatRegisterStates{
  final String error;
  CreateUserErrorState(this.error);
}
class RegisterChangePassowrdVisibilityState extends ChatRegisterStates{}