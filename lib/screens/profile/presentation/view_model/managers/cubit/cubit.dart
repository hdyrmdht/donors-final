import 'package:bloodbank_donors/screens/profile/presentation/view_model/managers/cubit/states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../data/api_manager.dart';

class UserProfileCubit extends Cubit<UserProfileStates> {
  UserProfileCubit(this.apiManager) : super(UserProfileInitState());
  ApiManager apiManager;

  static UserProfileCubit get(context) => BlocProvider.of(context);

  Future<void> getUserProfile(String profileId) async {
    emit(UserProfileLoadingState());

    try {
      var x = await apiManager.getProfileResponse(profileId);
      emit(UserProfileSuccessState(x));
    } catch (e) {
      emit(UserProfileErrorState(e.toString()));
    }
  }
}
