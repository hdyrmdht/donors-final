
import 'package:bloodbank_donors/screens/auth/login/presentation/view_model/managers/cubit/cubit.dart';
import 'package:flutter/material.dart';

import '../../../../../../share/componant/text_from_field_widget.dart';
import '../../../../../../share/styles_manager.dart';

Widget formOfFieldsLogin(
    {required BuildContext context,
    required formKey,
    required emailController,
    required passwordController}) {
  return Container(
    height: MediaQuery.of(context).size. height * 0.45,
    decoration: const BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(25),
        topLeft: Radius.circular(25),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(20.0),
      child: Form(
        key: formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'LOGIN',
                style: StyleHelper.textStyle16Regular(context).copyWith(
                  fontSize: 26,
                ),
              ),
            ),
            const SizedBox(
              height: 40.0,
            ),
            defaultFormField(
              context: context,
              controller: emailController,
              hintText: 'email',
              labelText: "email",
              suffixIcon: Icons.email,
              colorSuffixIcon: Colors.grey,
              type: TextInputType.emailAddress,
              submit: (value) {
                // if (formKey.currentState!.validate()) {}
              },
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'email must not be empty';
                }

                return null;
              },
            ),
            const SizedBox(
              height: 30.0,
            ),
            defaultFormField(
              context: context,
              controller: passwordController,
              suffixIcon: LoginCubit.get(context).icons,
              isPassword: LoginCubit.get(context).isPasswordShown,
              suffixPressd: () {
                LoginCubit.get(context).changeVisibility();
              },
              type: TextInputType.visiblePassword,
              submit: (value) {
                if (formKey.currentState!.validate()) {
                  //   LoginCubit.get(context).UserLogin(
                  //       email: emailController.text,
                  //       password: passwordController.text,
                  //   );
                }
              },
              validate: (String? value) {
                if (value!.isEmpty) {
                  return 'password is too short';
                }
                return null;
              },
              hintText: 'Password',
              labelText: "Password",
            ),
            const SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    ),
  );
}
