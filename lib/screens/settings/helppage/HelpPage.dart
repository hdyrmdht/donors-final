import 'package:bloodbank_donors/screens/settings/helppage/Contact%20_Us.dart';
import 'package:bloodbank_donors/share/componant/help_componant.dart';
import 'package:bloodbank_donors/style/colors.dart';
import 'package:flutter/material.dart';

import 'FAQ_page.dart';
import 'Privacy_page.dart';
import 'TermsandConditions_page.dart';

class HelpPage extends StatefulWidget {
  static const String routeName = "helppage";

  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  // var _faceid = true;
  // var _rememberme = true;
  // var _Touchid = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,
          height: double.infinity,
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: AppColors.primary,
            title: Text(
              'HELP',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Helpcompnant(
                    txt: 'FAQ',
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => FAQPage()));
                    },
                  ),
                  SizedBox(
                    height: 40,
                    width: 310,
                    child: Divider(
                      color: Color.fromARGB(255, 230, 218, 218),
                    ),
                  ),
                  Helpcompnant(
                    txt: 'Contact Us',
                    function: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => ContactUs()));
                    },
                  ),
                  SizedBox(
                    height: 40,
                    width: 310,
                    child: Divider(
                      color: Color.fromARGB(255, 230, 218, 218),
                    ),
                  ),
                  Helpcompnant(
                    txt: 'Terms & Conditions',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => TermsandConditions()));
                    },
                  ),
                  SizedBox(
                    height: 40,
                    width: 310,
                    child: Divider(
                      color: Color.fromARGB(255, 230, 218, 218),
                    ),
                  ),
                  Helpcompnant(
                    txt: 'Private Policy',
                    function: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PrivacyPage()));
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
