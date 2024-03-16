
import 'package:bloodbank_donors/layout/home_layout.dart';
import 'package:bloodbank_donors/screens/auth/login/presentation/view/screens/login.dart';
import 'package:bloodbank_donors/screens/home/home.dart';
import 'package:bloodbank_donors/share/navigator.dart';
import 'package:flutter/material.dart';

import '../../../../../../share/componant/custom_text_button.dart';
import '../../../../login/presentation/view/widgets/RPS_custom_painter_login.dart';
import '../../../../pageroute.dart';
import '../screens/register.dart';

Widget registerButtonWidget({required BuildContext context}) {
  return  Padding(
    padding: const EdgeInsets.all(2.0),
    child: CustomTextButton(
      backgroundColor: Colors.orange,
      text: "Register",
      textColor: Colors.white,
      valueDoubleBorderRadius: 25,
      fontSize: 24,
      onPressed: (){
        Navigator.pushAndRemoveUntil(
            context, Fadetion(page: const HomeLayout()),
          (route) =>true,
        );
      },
    ),
  );
}

//1
Widget registerIconWidget({required BuildContext context}) {
  return Stack(alignment: Alignment.topRight, children: [

    Container(
      height: MediaQuery.of(context).size. height * 0.13,
      width: MediaQuery.of(context).size. height * 0.7,
      child: CustomPaint(
        painter: RPSCustomPainter(),
        child:  Padding(
          padding: const EdgeInsets.only(bottom: 4.0, left: 4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: IconButton(onPressed: (){
                  Navigator.push(context, Alignmentaion(page: Login()));
                }, icon: const Icon(
                  Icons.arrow_circle_down_outlined,
                  size: 30,
                  color: Colors.deepPurpleAccent,
                ),)
              ),
            ],
          ),
        ),
      ),
    ),
  ]);
}
