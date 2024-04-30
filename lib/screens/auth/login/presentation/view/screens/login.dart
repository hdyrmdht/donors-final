import 'package:bloodbank_donors/screens/auth/login/presentation/view_model/managers/cubit/cubit.dart';
import 'package:bloodbank_donors/screens/auth/login/presentation/view_model/managers/cubit/states.dart';
import 'package:bloodbank_donors/share/componant/cache_helper.dart';
import 'package:bloodbank_donors/share/show_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../../layout/home_layout.dart';
import '../../../../../../share/componant/function.dart';
import '../widgets/background_for_login_and_register.dart';
import '../widgets/form_login.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);

  var formKey = GlobalKey<FormState>();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginStates>(listener: (context, state) {
      if (state is LoginErrorStates) {
        showToast(
            context: context,
            text: state.error,
            colorText: Colors.white,
            colorIcon: Colors.white,
            toastState: ToastStates.ERROR);
      } else if (state is LoginSuccessStates) {
        showToast(
            context: context,
            colorText: Colors.white,
            colorIcon: Colors.white,
            toastState: ToastStates.SUCCECC,
            text: 'Login successfully');
        CacheHelper.saveShared(key: "token", value: state.loginModel.token)
            .then((value) {
          token = state.loginModel.token;
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
            formLogin(context,
                formKey: formKey,
                emailController: emailController,
                passwordController: passwordController),
          ],
        ),
      );
    });
  }
}
