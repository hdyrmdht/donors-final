import 'package:bloodbank_donors/screens/auth/login/presentation/view/screens/login.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view/screens/register.dart';
import 'package:bloodbank_donors/share/blocOpserver.dart';
import 'package:bloodbank_donors/share/componant/cache_helper.dart';
import 'package:bloodbank_donors/share/network/remote/dioHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'screens/auth/login/presentation/view_model/managers/cubit/cubit.dart';
import 'screens/auth/register/presentation/view_model/managers/cubit/cubit.dart';


Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.initial();
  Bloc.observer =  MyBlocObserver();
  await CacheHelper.shared();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (BuildContext context) =>LoginCubit(),),
        BlocProvider(create: (BuildContext context) =>RegisterCubit() ,),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Login(),
        // initialRoute: OnBoardingScreen.routeName,
        // initialRoute: Hospitals.hospitals,
        // routes: {
        //   HomeLayout.routeName: (context) => const HomeLayout(),
        //   Donors.donors: (context) => const Donors(),
        //   Hospitals.hospitals: (context) => const Hospitals(),
        //   ProfileScreen.routeName: (context) => ProfileScreen(),
        //   HomeScreen.routeName: (context) => HomeScreen(),
        //   SearchPage.routeName: (context) => const SearchPage(),
        //   HospitalsView.routeName: (context) => const HospitalsView(),
        //   NotifiPage.routeName: (context) => const NotifiPage(),
        //   SettingsTab.routeName: (context) => SettingsTab(),
        //   SecurityPage.routeName: (context) => const SecurityPage(),
        //   HelpPage.routeName: (context) => const HelpPage(),
        //   OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        //   // OnBoardingScreen.routeName: (context) => const Paintt(),
        // },
      ),
    );
  }
}
