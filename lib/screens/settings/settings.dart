// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors



import 'package:flutter/material.dart';

import '../../share/componant/componant.dart';
import '../../style/colors.dart';
import 'helppage/HelpPage.dart';
import 'settingspage/Notification.dart';
import 'settingspage/SecurityPage.dart';


class SettingsTab extends StatefulWidget {
  static const String routeName ="settings";
  @override
  State<SettingsTab> createState() => _SettingsTabState();
}

class _SettingsTabState extends State<SettingsTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(children: [
            Settingsfields(
              icon: Icons.notifications_sharp,
              text: 'Notification',
              function: () {
                Navigator.pushNamed(
                    context,NotifiPage.routeName
                    );
                  
              },
            ),
            SizedBox(
              height: 40,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
            Settingsfields(icon: Icons.lock, text: 'Security', function: () {  Navigator.pushNamed(
                    context,SecurityPage.routeName
                    );}),
            SizedBox(
              height: 40,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
            Settingsfields(
                icon: Icons.remove_red_eye,
                text: 'Appearance',
                function: () {}),
            SizedBox(
              height: 40,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
            Settingsfields(
                icon: Icons.info_rounded, text: 'HELP', function: () {Navigator.pushNamed(
                    context,HelpPage.routeName);}),
            SizedBox(
              height: 40,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
      Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Colors.grey[300],
                    ),
                    child: Icon(
                      Icons.people_alt,
                      color: AppColors.primary60,
                    ),
                    
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                " invite Friends",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: MaterialButton(
                    minWidth: 6,
                    child: Icon(
                      Icons.share,
                      color: AppColors.primary60,
                    ),
                    onPressed: (){}
                 
                  ),
                ),
              ],
            ), 
            SizedBox(
              height: 40,
              width: 310,
              child: Divider(
                color: Color.fromARGB(255, 230, 218, 218),
              ),
            ),
      
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 14),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: Color.fromARGB(255, 233, 169, 169),
                    ),
                    // ignore: sort_child_properties_last
                    child: MaterialButton(
                      onPressed: () {
                       showbutnheet(context);
                      },
                      child: Icon(
                        Icons.login_rounded,
                        color: Color.fromARGB(255, 199, 16, 40),
                      ),
                    ),
                    width: 48,
                    height: 48,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Logout',
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
           
          ]),
        ),
      ),
    );
  }
}
