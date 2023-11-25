import 'package:bloodbank_donors/screens/login/pageroute.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../layout/home_layout.dart';
import '../../share/componant/cache_helper.dart';
import '../../share/componant/flutter_toast.dart';
import '../../share/componant/text_from_field_widget.dart';
import '../register/sign_up.dart';
import 'cubit/cubit.dart';
import 'cubit/states.dart';

class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  _MyLoginState createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => LoginCubit(),
      child: BlocConsumer<LoginCubit, LoginStates>(
        listener: (context, state) {
          if (state is ErrorLoginStates) {
            showToast(
              text: 'state.error'
                  "تأكد من الايميل والباسورد",
              state: ToastStates.ERROR,
            );
          } else if (state is SuccessLoginStates) {
            CacheHelper.saveShared(key: 'uid', value: state.uid).then((value) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const HomeLayout(),
                ),
              );
              print(state.uid.toString());
              print(state.uid);
            });
          }
        },
        builder: (context, state) {
          return Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/login.png'),
                  fit: BoxFit.cover),
            ),
            child: Scaffold(
              backgroundColor: Colors.transparent,
              body: Stack(children: [
                Container(
                  padding: const EdgeInsets.only(right: 35, top: 80),
                  child: const Text(
                    "Welcome\nBack",
                    style: TextStyle(color: Colors.white, fontSize: 33),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                      right: 35,
                      left: 35,
                      top: MediaQuery.of(context).size.height * 0.5),
                  child: Form(
                    key: formKey,
                    child: Column(children: [
                      defaultFormField(
                          controller: emailController,
                          hintText: 'Email',
                          labelText: 'Email',
                          type: TextInputType.emailAddress,
                          prefix: Icons.email,
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'Email must not be empty';
                            }

                            return null;
                          },
                          context: context),
                      const SizedBox(
                        height: 30,
                      ),
                      defaultFormField(
                          controller: passwordController,
                          hintText: 'Password',
                          labelText: 'Password',
                          type: TextInputType.visiblePassword,
                          prefix: Icons.password,
                          submit: (s) {
                            if (formKey.currentState!.validate()) {
                              return;
                            }
                            return;
                          },
                          validate: (String? value) {
                            if (value!.isEmpty) {
                              return 'Password must not be empty';
                            }
                            return null;
                          },
                          isPassword: LoginCubit.get(context).isPasswordshowen,
                          suffixIcon: LoginCubit.get(context).icons,
                          suffixPressd: () {
                            LoginCubit.get(context).ChangeVisibility();
                          },
                          context: context),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sign In',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 27,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          CircleAvatar(
                            radius: 30,
                            backgroundColor: const Color(0xff4c505b),
                            child: IconButton(
                              color: Colors.white,
                              onPressed: () {
                                if (formKey.currentState!.validate()) {
                                  // LoginCubit.get(context).sginIn(
                                  //   email: emailController.text,
                                  //   password: passwordController.text,
                                  // );
                                }
                              },
                              icon: const Icon(Icons.arrow_forward),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'I don\'t have any \naccount  😔 =>',
                              style: TextStyle(
                                  fontSize:
                                      MediaQuery.of(context).size.width / 23,
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[200],
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context, Scale(page: const MyRegister()));
                              },
                              child: Text(
                                'Sign Up',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize:
                                      MediaQuery.of(context).size.width / 18,
                                  color: Colors.blue,
                                ),
                              ),
                            ),
                          ]),
                      const SizedBox(
                        height: 40,
                      ),
                    ]),
                  ),
                ),
              ]),
            ),
          );
        },
      ),
    );
  }
}
