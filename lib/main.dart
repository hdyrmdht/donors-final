import 'package:bloodbank_donors/screens/home/home.dart';
import 'package:bloodbank_donors/layout/home_layout.dart';
import 'package:bloodbank_donors/screens/onboarding/onboarding.dart';
import 'package:bloodbank_donors/screens/profile/profile.dart';
import 'package:bloodbank_donors/screens/home/search_page/view/search_page.dart';
import 'package:bloodbank_donors/screens/settings/settings.dart';
import 'package:flutter/material.dart';
import 'screens/favouriates/views/hospital_view.dart';
import 'screens/settings/helppage/HelpPage.dart';
import 'screens/settings/settingspage/Notification.dart';
import 'screens/settings/settingspage/SecurityPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: OnboardingScreen.routeName,
      routes: {
        HomeLayout.routeName: (context) => const HomeLayout(),
        ProfileScreen.routeName :(context) => ProfileScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        SearchPage.routeName: (context) => const SearchPage(),
        HospitalsView.routeName: (context) => const HospitalsView(),
        NotifiPage.routeName: (context) => const NotifiPage(),
        SettingsTab.routeName: (context) => SettingsTab(),
        SecurityPage.routeName: (context) => const SecurityPage(),
        HelpPage.routeName: (context) => const HelpPage(),
         OnboardingScreen.routeName : (context) => const OnboardingScreen(),
     
      },

    );
  }
}
