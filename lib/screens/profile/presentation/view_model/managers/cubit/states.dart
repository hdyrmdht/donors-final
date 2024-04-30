import 'package:bloodbank_donors/screens/profile/data/ProfileResponseModel.dart';


abstract class UserProfileStates {}

class UserProfileInitState extends UserProfileStates {}

class UserProfileLoadingState extends UserProfileStates {}

class UserProfileSuccessState extends UserProfileStates {
  ProfileResponse profileResponse;
  UserProfileSuccessState(this.profileResponse);
}

class UserProfileErrorState extends UserProfileStates {
  final String error;
  UserProfileErrorState(this.error);
}
