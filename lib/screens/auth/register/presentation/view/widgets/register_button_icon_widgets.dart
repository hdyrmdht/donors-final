import 'package:bloodbank_donors/layout/home_layout.dart';
import 'package:bloodbank_donors/screens/auth/login/presentation/view/screens/login.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view_model/managers/cubit/cubit.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view_model/managers/cubit/states.dart';
import 'package:bloodbank_donors/screens/home/home.dart';
import 'package:bloodbank_donors/share/navigator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../share/componant/custom_text_button.dart';
import '../../../../login/presentation/view/widgets/RPS_custom_painter_login.dart';
import '../../../../pageroute.dart';
import '../screens/register.dart';

Widget registerButtonWidget({
  required BuildContext context,
  required emailController,
  required nameController,
  required phoneController,
  required addressController,
  required birthdayController,
  required bloodTypeController,
  required passwordController,
  required formKey,
  required isUserOrNot,
}) {
  return Padding(
    padding: const EdgeInsets.all(2.0),
    child: BlocConsumer<RegisterCubit, RegisterStates>(
  listener: (context, state) {
  },
  builder: (context, state) {
      if(state is RegisterUserLoadingState ||state is RegisterHospitalLoadingState){
        return const CupertinoActivityIndicator(
          radius: 30,color: Colors.orangeAccent,
        );
      }else{
       return CustomTextButton(
          backgroundColor: Colors.orange,
          text: "Register",
          textColor: Colors.white,
          valueDoubleBorderRadius: 25,
          fontSize: 24,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              if (isUserOrNot == "user") {
                RegisterCubit.get(context).postRegisterUser(
                  email: emailController.text,
                  name: nameController.text,
                  phone: phoneController.text,
                  address: addressController.text,
                  birthday: birthdayController.text,
                  bloodType: bloodTypeController.text,
                  password: passwordController.text,);
              } else {
                RegisterCubit.get(context).postRegisterHospital(
                  email: emailController.text,
                  name: nameController.text,
                  phone: phoneController.text,
                  address: addressController.text,
                  password: passwordController.text,);
              }
            }
          },
        );
      }
  },
),
  );
}

//1
Widget registerIconWidget({required BuildContext context}) {
  return Stack(alignment: Alignment.topRight, children: [
    Container(
      height: MediaQuery.of(context).size.height * 0.1,
      width: MediaQuery.of(context).size.height * 0.7,
      child: CustomPaint(
        painter: RPSCustomPainter(),
        child: Padding(
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
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(context, Alignmentaion(page: Login()));
                    },
                    icon: const Icon(
                      Icons.arrow_circle_down_outlined,
                      size: 30,
                      color: Colors.deepPurpleAccent,
                    ),
                  )),
            ],
          ),
        ),
      ),
    ),
  ]);
}
