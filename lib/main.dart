import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hadeer_add/screens/home/cubit/home_cubit.dart';
import 'package:hadeer_add/screens/home/home.dart';
import 'package:hadeer_add/screens/hospitels/screen/hospitals.dart';
import 'package:hadeer_add/screens/on_bording/on_bording.dart';
import 'package:hadeer_add/screens/profile/profile.dart';
import 'package:hadeer_add/screens/settings/settings.dart';
import 'package:hadeer_add/share/componant/cache_helper.dart';
import 'package:hadeer_add/share/componant/dio_helper.dart';

import 'layout/home_layout.dart';
import 'screens/donors/donor.dart';
import 'screens/favouriates/views/hospital_view.dart';
import 'screens/settings/helppage/HelpPage.dart';
import 'screens/settings/settingspage/Notification.dart';
import 'screens/settings/settingspage/SecurityPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.shared();
  DioHelper.init();
  runApp(
      MultiBlocProvider(
        providers: [
      BlocProvider<HomeCubit>(
      create: (BuildContext context) => HomeCubit(),
      )
        ],
          child: const MyApp(),
      ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeLayout.routeName,
      // initialRoute: Hospitals.hospitals,
      routes: {
        HomeLayout.routeName: (context) => const HomeLayout(),
        Donors.donors: (context) => const Donors(),
        Hospitals.hospitals: (context) => const Hospitals(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        //SearchPage.routeName: (context) => const SearchPage(),
        HospitalsView.routeName: (context) => const HospitalsView(),
        NotifiPage.routeName: (context) => const NotifiPage(),
        SettingsTab.routeName: (context) => SettingsTab(),
        SecurityPage.routeName: (context) => const SecurityPage(),
        HelpPage.routeName: (context) => const HelpPage(),
        OnBoardingScreen.routeName: (context) => const OnBoardingScreen(),
        // OnBoardingScreen.routeName: (context) => const Paintt(),
      },
    );
  }
}
