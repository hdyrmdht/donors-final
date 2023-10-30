import 'package:flutter/material.dart';

import '../../../style/colors.dart';



class SecurityPage extends StatefulWidget {
  static const String routeName="security";

  const SecurityPage({super.key});

  @override
  State<SecurityPage> createState() => _SecurityPageState();
}

class _SecurityPageState extends State<SecurityPage> {
  
   var  _faceid=true;
 var _rememberme=true;
 var _Touchid=false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [Image.asset( 
        "assets/images/background.png",
          fit: BoxFit.fill,
          width: double.infinity,height: double.infinity,
        ),
    
        Scaffold(backgroundColor: Colors.transparent,
          
          appBar: AppBar(backgroundColor: AppColors.primary,
            title:  Text(
                        'Security',
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
                  SwitchListTile(
                    activeColor:AppColors.primary,
                    title: Text('Face ID',
                  style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                  ),
                    value: _faceid,
                     onChanged: (newvalue){
                      setState(() {
                        _faceid=newvalue;
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
                    
                    title: Text('Remember Me',
                  style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                  ),
                    value: _rememberme,
                     onChanged: (newvalue){
                      setState(() {
                        _rememberme=newvalue;
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
                    title: Text('Touch ID',
                  style: TextStyle(fontSize: 18.0,fontWeight: FontWeight.bold),
                  ),
                    value: _Touchid,
                     onChanged: (newvalue){
                      setState(() {
                        _Touchid=newvalue;
                      });
                     }),
                   
                ],
              )
            ],
          ),

        ),
      ],
    );
  }
}