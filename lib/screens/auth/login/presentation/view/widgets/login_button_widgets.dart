
import 'package:bloodbank_donors/screens/auth/login/presentation/view/screens/login.dart';
import 'package:bloodbank_donors/screens/auth/login/presentation/view_model/managers/cubit/cubit.dart';
import 'package:bloodbank_donors/screens/auth/pageroute.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view/screens/register.dart';
import 'package:flutter/material.dart';

import '../../../../../../share/componant/custom_text_button.dart';
import 'RPS_custom_painter_login.dart';

Widget loginButtonWidget({required BuildContext context,required  password,required  email}) {
  return Stack(alignment: Alignment.bottomLeft, children: [
    Container(
      height: MediaQuery.of(context).size. height * 0.35,
      width: double.infinity,
      child: CustomPaint(
        painter: RPSCustomPainter(),
        child: Padding(
          padding: const EdgeInsets.only(right: 1, bottom: 1),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               SizedBox(
                height: MediaQuery.sizeOf(context).width * 0.11,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: CustomTextButton(
                      heightButton: 60,
                      width: MediaQuery.sizeOf(context).width * 0.6,
                      backgroundColor: Colors.deepPurpleAccent,
                      text: "Login",
                      textColor: Colors.white,
                      valueDoubleBorderRadius: 25,
                      fontSize: 24,
                      onPressed: () {
                       LoginCubit.get(context).postLogin(password: password.text, email: email.text);
                      },
                    // width: context.width(0.2),
                    ),
                  ),
                ],
              ),
              const Spacer(),
              const Align(
                alignment: Alignment.bottomRight,
                child: Icon(
                  Icons.arrow_circle_up_sharp,
                  size: 30,
                  color: Colors.deepPurpleAccent,
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  ]);
}

class AlertDialogUserOrHospital extends StatelessWidget {
  const AlertDialogUserOrHospital({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(context, Scale(page: Register()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.2),
                  color: Colors.deepPurpleAccent,
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "تسجيل مستخدم",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context, Scale(page: Register()));
              },
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.2),
                  color: Colors.deepPurpleAccent,
                ),
                child: const Row(
                  children: [
                    Expanded(
                      child: Text(
                        "تسجيل مستشفى",
                        textDirection: TextDirection.rtl,
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.hotel_sharp,
                        color: Colors.white,
                        size: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
