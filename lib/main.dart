import 'package:bloodbank_donors/screens/auth/login/presentation/view/screens/login.dart';
import 'package:bloodbank_donors/screens/auth/pageroute.dart';
import 'package:bloodbank_donors/screens/on_bording/on_bording.dart';
import 'package:bloodbank_donors/share/blocOpserver.dart';
import 'package:bloodbank_donors/share/componant/cache_helper.dart';
import 'package:bloodbank_donors/share/network/remote/dioHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:overlay_support/overlay_support.dart';
import 'layout/home_layout.dart';
import 'screens/auth/login/presentation/view_model/managers/cubit/cubit.dart';
import 'screens/auth/register/presentation/view_model/managers/cubit/cubit.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.initial();
  Bloc.observer =  MyBlocObserver();
  await CacheHelper.shared();
  late var onBoarding=CacheHelper.getShared(key:"onBoarding");
  Widget widget;
  String? token=CacheHelper.getShared(key: "token");
  if(onBoarding !=null){
    if(token!=null){
      //// Navigator.pushAndRemoveUntil(
      //         //     context, Fadetion(page: const HomeLayout()),
      //         //   (route) =>true,
      //         // );
      widget=const HomeLayout();
    }else{
      widget=Login();
    }
  }else{
    widget=const OnBoardingScreen();
  }
  runApp(MyApp(widget: widget,));
}

class MyApp extends StatelessWidget {
  Widget? widget;

  MyApp({super.key,
    this.widget,
  });


  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) =>LoginCubit(),),
        BlocProvider(create: (BuildContext context) =>RegisterCubit(),),
      ],
      child: OverlaySupport.global(child: MaterialApp(
         debugShowCheckedModeBanner: false,
         home: widget,
       ),),


    );
  }
}
