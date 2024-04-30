
abstract class LoginStates{}

class InitiLoginStates extends LoginStates{}
class LoadingLoginStates extends LoginStates{}
class SuccessLoginStates extends LoginStates{
  final String uid;

  SuccessLoginStates(this.uid);
}
class ErrorLoginStates extends LoginStates{
  final String error;

  ErrorLoginStates(this.error);
}
class ChangeVisibilityLoginStates extends LoginStates{}