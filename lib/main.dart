import 'package:bloodbank_donors/layout/home_layout.dart';
import 'package:bloodbank_donors/screens/home/home.dart';
import 'package:bloodbank_donors/screens/home/search_page/view/search_page.dart';
import 'package:bloodbank_donors/screens/hospitels/screen/hospitals.dart';
import 'package:bloodbank_donors/screens/on_bording/on_bording.dart';
import 'package:bloodbank_donors/screens/profile/presentation/view/screens/profile.dart';
import 'package:bloodbank_donors/screens/settings/settings.dart';
import 'package:bloodbank_donors/share/componant/cache_helper.dart';
import 'package:flutter/material.dart';

import 'screens/donors/donor.dart';
import 'screens/favouriates/views/hospital_view.dart';
import 'screens/settings/helppage/HelpPage.dart';
import 'screens/settings/settingspage/Notification.dart';
import 'screens/settings/settingspage/SecurityPage.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.shared();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnBoardingScreen.routeName,
      // initialRoute: Hospitals.hospitals,
      routes: {
        HomeLayout.routeName: (context) =>  HomeLayout(),
        Donors.donors: (context) => const Donors(),
        Hospitals.hospitals: (context) => const Hospitals(),
        ProfileScreen.routeName: (context) => ProfileScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SearchPage.routeName: (context) => const SearchPage(),
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
