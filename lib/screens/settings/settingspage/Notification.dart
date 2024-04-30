// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

import '../../../style/colors.dart';



class NotifiPage extends StatefulWidget {
  static const String routeName = "notifpage";

  const NotifiPage({super.key});

  @override
  State<NotifiPage> createState() => _NotifiPageState();
}

class _NotifiPageState extends State<NotifiPage> {
  var _isSound = false;
  var _isVibrate = false;
  var _isnewtips = true;
  var _isnewservices = true;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [ Image.asset( 
        "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,height: double.infinity,
        ),
    
        Scaffold(backgroundColor: Colors.transparent,
          appBar: AppBar(backgroundColor: AppColors.primary,
            title:  Text(
                        'Notification',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
              
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    SwitchListTile(activeColor:AppColors.primary,
                        title: Text(
                          'Sound',
                          style:
                              TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        value: _isSound,
                        onChanged: (newvalue) {
                          setState(() {
                            _isSound = newvalue;
                          });
                        }),
                    SizedBox(
                      height: 20,
                      width: 310,
                      child: Divider(
                        color: Color.fromARGB(255, 230, 218, 218),
                      ),
                    ),
                    SwitchListTile(
                        activeColor:AppColors.primary,
                        inactiveThumbColor: Colors.white,
                        title: Text(
                          'Vibrate',
                          style:
                              TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        value: _isVibrate,
                        onChanged: (newvalue) {
                          setState(() {
                            _isVibrate = newvalue;
                          });
                        }),
                    SizedBox(
                      height: 20,
                      width: 310,
                      child: Divider(
                        color: Color.fromARGB(255, 230, 218, 218),
                      ),
                    ),
                    SwitchListTile(activeColor:AppColors.primary,
                        title: Text(
                          'New tips available',
                          style:
                              TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        value: _isnewtips,
                        onChanged: (newvalue) {
                          setState(() {
                            _isnewtips = newvalue;
                          });
                        }),
                    SizedBox(
                      height: 20,
                      width: 310,
                      child: Divider(
                        color: Color.fromARGB(255, 230, 218, 218),
                      ),
                    ),
                    SwitchListTile(activeColor:AppColors.primary,
                        title: Text(
                          'New service available',
                          style:
                              TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                        value: _isnewservices,
                        onChanged: (newvalue) {
                          setState(() {
                            _isnewservices = newvalue;
                          });
                        })
                  ],
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
