import 'package:bloodbank_donors/screens/auth/register/presentation/view_model/managers/cubit/cubit.dart';
import 'package:bloodbank_donors/screens/auth/register/presentation/view_model/managers/cubit/states.dart';
import 'package:bloodbank_donors/share/show_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../layout/home_layout.dart';
import '../../../../../../share/componant/cache_helper.dart';
import '../../../../../../share/componant/function.dart';
import '../../../../login/presentation/view/widgets/background_for_login_and_register.dart';
import '../widgets/form_register.dart';

class Register extends StatelessWidget {
  Register({Key? key, required this.isUserOrNot}) : super(key: key);

  String isUserOrNot;
  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var nameController = TextEditingController();
  var phoneController = TextEditingController();
  var addressController = TextEditingController();
  var birthdayController = TextEditingController();
  var bloodTypeController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterStates>(
        listener: (context, state) {
      if (state is RegisterUserErrorState) {
        showToast(
            context: context,
            text: state.error,
            colorText: Colors.white,
            colorIcon: Colors.white,
            toastState: ToastStates.ERROR);
      } else if (state is RegisterUserSuccessState) {
        showToast(
            context: context,
            colorText: Colors.white,
            colorIcon: Colors.white,
            toastState: ToastStates.SUCCECC,
            text: 'User Register successfully');
        CacheHelper.saveShared(key: "token", value: state.registerModel.token)
            .then((value) {
          token = state.registerModel.token;
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) =>  HomeLayout(),
            ),
            (route) => false,
          );
        });
      }

      if (state is RegisterHospitalErrorState) {
        showToast(
            context: context,
            text: state.error,
            colorText: Colors.white,
            colorIcon: Colors.white,
            toastState: ToastStates.ERROR);
      } else if (state is RegisterHospitalSuccessState) {
        showToast(
            context: context,
            colorText: Colors.white,
            colorIcon: Colors.white,
            toastState: ToastStates.SUCCECC,
            text: 'Hospital Register successfully');
        CacheHelper.saveShared(key: "token", value: state.registerModel.token)
            .then((value) {
          token = state.registerModel.token;
          Navigator.pushAndRemoveUntil(
            context,
            MaterialPageRoute(
              builder: (context) =>  HomeLayout(),
            ),
            (route) => false,
          );
        });
      }
    }, builder: (context, state) {
      return Scaffold(
        backgroundColor: Colors.grey[200],
        body: Stack(
          children: [
            backgroundForLoginAndRegister(context),
            formRegister(context,
                formKey: formKey,
                emailController: emailController,
                nameController: nameController,
                phoneController: phoneController,
                addressController: addressController,
                birthdayController: birthdayController,
                bloodTypeController: bloodTypeController,
                passwordController: passwordController,
                isUserOrNot: isUserOrNot),
          ],
        ),
      );
    });
  }
}
