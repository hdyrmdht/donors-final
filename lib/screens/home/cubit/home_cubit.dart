import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadeer_add/screens/home/models/create_post_model.dart';
import 'package:hadeer_add/screens/home/models/delete_post_model.dart';
import 'package:hadeer_add/screens/home/models/update_post_model.dart';

import '../../../share/componant/dio_helper.dart';
import '../models/home_post_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeStates> {
  HomeCubit() : super(HomeInitial());
  static HomeCubit get(context) => BlocProvider.of(context);
  List<HomePostModel> allPosts = [];
  CreatePostModel ? createPostModel;
  UpdatePostModel ? updatePostModel;
  DeletePostModel ? deletePostModel;

  void getAllPosts() {
    emit(HomeLoading());
    DioHelper.getData(
        url: 'posts/index',
    ).then((value) {
      for (var element in value.data) {
        allPosts.add(HomePostModel.fromJson(element));
        print(allPosts[0].description);
        print("from getAllPosts");
      }
      emit(HomeInitial());
    }).catchError((error) {
      print(error.toString());
      emit(HomeInitial());
    });
  }

  void createPosts() {
    emit(HomeLoading());
    DioHelper.postData(
        url: 'posts/store',
      data: {
        "description":"ejjjjjmssss",
        "longtitude":"requllllllired",
        "latitude":"requirelllllld",
        "background":"mmmmmm"
      }).then((value) {
      createPostModel = CreatePostModel.fromJson(value.data);
      print(createPostModel?.description);
      print("from createPosts");
      emit(HomeInitial());
    }).catchError((error) {
      print(error.toString());
      emit(HomeInitial());
    });
  }

  void updatePosts({required String postId}) {
    emit(HomeLoading());
    DioHelper.putData(
        url: 'posts/$postId',
      data: {
        "description":"kkkkkkkkkkkkkkkkk",
        "longtitude":"iiiiiii",
        "latitude":"pppppppp",
        "background":"llllll"
      }
      ).then((value) {
      updatePostModel = UpdatePostModel.fromJson(value.data);
      print(updatePostModel?.description);
      print("from updatePosts");
      emit(HomeInitial());
    }).catchError((error) {
      print(error.toString());
      emit(HomeInitial());
    });
  }

  void deletePosts({required String postId}) {
    emit(HomeLoading());
    DioHelper.deleteData(
        url: 'posts/$postId',
      ).then((value) {
      deletePostModel = DeletePostModel.fromJson(value.data);
      print(deletePostModel?.description);
      print("from deletePosts");
      emit(HomeInitial());
    }).catchError((error) {
      print(error.toString());
      emit(HomeInitial());
    });
  }


}
